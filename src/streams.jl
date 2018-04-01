streams = Dict{UInt64, kStreamInfo}()

function multistream_listener(svalues::Dict{Int, Tuple{Bool, Any}}, handle::Int, handler::Function, indices)
    return (value) -> begin
        svalues[handle] = (true, value)
        println([(v[1], v[2][1]) for v in svalues])
        if reduce((x,y) -> x && y, true, map(tup -> tup[1], values(svalues)))
            handler(map(tup -> tup[2], map(i->svalues[i], indices))...)
            for kv in svalues
                k,v = kv
                svalues[k] = (false, v[2])
            end
        end
    end
end
function add_multiple_streams(callsof::Array{kPC,1}, handler::Function)
    vls = Dict{Int, Tuple{Bool,Any}}([(i, (false, Void())) for i in 1:length(callsof)])
    for i=1:length(callsof)
        add_stream_raw(callsof[i], multistream_listener(vls, i, handler, 1:length(callsof)))
    end
end

function add_stream_raw(tocall::kPC, handler::Function; start::Bool=true)
    kstream = Remote.KRPC.AddStream(tocall.pcall)
    streams[kstream.id] = kStreamInfo(handler, Nullable{String}(), tocall.rty, Void())
    return krpc.schema.Stream(id=kstream.id)
end

function add_stream(tocall::kPC; start::Bool=true)
    kstream = Remote.KRPC.AddStream(tocall.pcall)
    init_value = SendMessage(Remote.conn, tocall)
    outp = kStreamValue(init_value)
    streams[kstream.id] = kStreamInfo(function (rv) outp.value = rv end, Nullable{String}(), tocall.rty, Void())
    return outp
end

function add_stream(tocall::Array{kPC,1}; start::Bool=true)
    return map(pc -> add_stream(pc, start=start), tocall)
end

function clear_streams()
    for strs in streams
        Remote.KRPC.RemoveStream(strs[1])
    end
    global streams = Dict{UInt64, kStreamInfo}()
end


function stream_listener(str_conn::TCPSocket)
    while true
        data = readproto(RecvRawProto(str_conn), krpc.schema.StreamUpdate())
        for result in data.results
            if haskey(streams, result.id)
                listenerinfo = streams[result.id]
                ires = result.result
                if ProtoBuf.has_field(ires, :error)
                    listenerinfo.error = Nullable(kRPC.make_error(ires.error))
                    continue
                end
                ivalue = getJuliaValue(ires.value, listenerinfo.typ)
                listenerinfo.value = ivalue
                try
                    Base.invokelatest(listenerinfo.listener, ivalue)
                catch err
                    clear_streams()
                    rethrow(err)
                end
            end
        end
    end
end
