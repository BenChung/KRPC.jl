struct AddStream_Phantom <: Request{:KRPC, :AddStream, kRPCTypes.kStream}
    call::kRPC.Request
    start::Bool
end

function add_stream(conn::kRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}
    request_map = Dict{UInt8, Pair{Request, Int}}()
    handles = kerbal(conn, ((AddStream_Phantom.(calls, true))..., ))
    for ((index, call), handle) in zip(enumerate(calls), handles)
        request_map[handle.id] = call=>index
    end
    default_value = Any[Nothing() for i=1:K]
    out = Channel{Vector}(0)
    bind(out, conn.str_listener)
    listener = Listener(request_map, default_value, out)
    setindex!.((conn.listeners, ), (listener, ), getproperty.(handles, :id))
    return out
end

function update_value(listener::Listener, stream::UInt64, value)
    req, arg_index = listener.streams[stream]
    processed_value = process_return(value, req)
    listener.current_value[arg_index] = processed_value
end

function send_current_values(listener::Listener)
    try_put!(listener.channel, listener.current_value)
end

# writes to c only if there's a task waiting on it
# we need this because kRPC will just yammer away on the
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

function stream_listener(conn::kRPCConnection)
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
