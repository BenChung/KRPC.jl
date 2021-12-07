"""
    add_stream(conn::KRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}

Add and return a listener for a given set of calls to KRPC. The returned listener will produce a combined
value for *any* update of the streamed calls.

# Examples

```
using KRPC.Interface.SpaceCenter
stream = add_stream(conn, (KRPC.Interface.SpaceCenter.get_ActiveVessel(), KRPC.Interface.SpaceCenter.get_GameMode()))
for (vessel, game_mode) in stream 
    println("The current vessel is \$vessel in game mode \$game_mode")
end
```
"""
function add_stream(conn::KRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}
    request_map = Dict{UInt64, Pair{Request, Int}}()
    handles = kerbal(conn, ((AddStream_Phantom.(calls, true))..., ))
    for ((index, call), handle) in zip(enumerate(calls), handles)
        request_map[handle.id] = call=>index
    end
    default_value = Any[Nothing() for i=1:K]
    out = Channel{Vector}(0)
    bind(out, conn.str_listener)
    listener = Listener(request_map, conn, default_value, out)
    setindex!.((conn.listeners, ), (listener, ), getproperty.(handles, :id))
    return listener
end

"""
    add_stream(f::Function, conn::KRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}

# Examples

Do-notation version of add_stream.
```
add_stream(conn, (KRPC.Interface.SpaceCenter.get_ActiveVessel(), KRPC.Interface.SpaceCenter.get_GameMode())) do stream
    nmessages = 0
    for (vessel, game_mode) in stream 
        println("The current vessel is \$vessel in game mode \$game_mode")
    end
end
```
"""
function add_stream(f::Function, conn::KRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}
    listener = add_stream(conn, calls)
    try
        f(listener) 
    finally
        close(listener)
    end
end

"""
    next_value(channel::KRPC.Listener)

Returns the next value is sent from the server for any of the RPC calls. `next_value` will block
until a value is produced.
"""
function next_value(channel::Listener)
    return take!(channel.channel)
end

Base.iterate(channel::Listener) = iterate(channel.channel)
Base.iterate(channel::Listener, state) = iterate(channel.channel, state)

function Base.close(channel::Listener)
    req = Request[]
    for id in keys(channel.streams)
        if !(id in keys(channel.streams))
            error("Attempted to remove unbound stream. Check if the stream has already been removed.")
        end
        delete!(channel.connection.listeners, id)
        push!(req, RemoveStream_Phantom(id))
    end
    kerbal(channel.connection, (req..., ))
end

function update_value(listener::Listener, stream::UInt64, value)
    req, arg_index = listener.streams[stream]
    processed_value = process_return(listener.connection, value, req)
    listener.current_value[arg_index] = processed_value
end

function send_current_values(listener::Listener)
    try_put!(listener.channel, listener.current_value)
end

# writes to c only if there's a task waiting on it
# we need this because KRPC will just yammer away on the
# socket and then crash if there's nothing listening on the
# other end, so can't wait for there to be a listener on ours
# assumes c is unbuffered
function try_put!(c::Channel, value)
    lock(c)
    taker = try 
        Base.check_channel_state(c)
        notify(c.cond_wait)
        if isempty(c.cond_take.waitq)
            nothing
        else 
            popfirst!(c.cond_take.waitq)
        end
    finally
        unlock(c)
    end
    if !isnothing(taker)
        schedule(taker, value)
        yield()
    end
    return value
end

function stream_listener(conn::KRPCConnection)
    try
        while (!isready(conn.active) || take!(conn.active))
            updated = Set{Listener}()
            data = readproto(RecvRawProto(conn.stream_conn), krpc.schema.StreamUpdate())
            for result in data.results 
                if !(result.id in keys(conn.listeners))
                    continue
                end
                listener = conn.listeners[result.id]
                update_value(listener, result.id, result.result.value)
                push!(updated, listener)
            end
            send_current_values.(updated)
        end
    finally
        Base.close(conn.stream_conn) # we're about to die, so close the channel
    end
end
