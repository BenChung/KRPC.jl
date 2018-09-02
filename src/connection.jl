function kRPCConnect(client_name::String)
    return kRPCConnect("localhost", 50000, 50001, client_name)
end

function kRPCConnect(port::Int64, client_name::String)
    return kRPCConnect("localhost", port, port+1, client_name)
end

function connect_or_error(conn, cr :: krpc.schema.ConnectionRequest)
    SendRawProto(conn, cr)
    resp = readproto(RecvRawProto(conn), krpc.schema.ConnectionResponse())
    if resp.status == krpc.schema.ConnectionResponse_Status.MALFORMED_MESSAGE
        throw("Malfomed Initial Message, Check Version")
    elseif resp.status == krpc.schema.ConnectionResponse_Status.TIMEOUT
        throw("Timeout, check network")
    elseif resp.status == krpc.schema.ConnectionResponse_Status.WRONG_TYPE
        throw("Wrong type, yell at maintainer")
    end
    return resp
end

function generateStubs(conn)
	cachepath = joinpath(@__DIR__, "..", "deps")
	genpath = joinpath(cachepath, "gen.jl")
	if isfile(genpath)
		kRPC.eval(:(include($genpath)))
	else
		mkpath(cachepath)
	    info = GetServices(conn)
	    gennex = Codegen.generateHelpers(info, conn)
        open(genpath, "w") do f
            println(f, gennex)
        end
        include_dependency(genpath)
	    kRPC.eval(gennex)
	end
end

function kRPCConnect(host::String, port::Int64, stream_port::Int64, client_name::String)
    if lastindex(client_name) > 31
        throw(ArgumentError("client name too long"))
    end 

    conn = connect(host, port)
    str_conn = connect(host, stream_port)

    resp = connect_or_error(conn, krpc.schema.ConnectionRequest(client_name=client_name,_type=krpc.schema.ConnectionRequest_Type.RPC))
    connect_or_error(str_conn, krpc.schema.ConnectionRequest(client_identifier=resp.client_identifier,_type=krpc.schema.ConnectionRequest_Type.STREAM))

    conn = kRPCConnection(conn, str_conn, resp.client_identifier)
    if !isdefined(kRPC, :Remote)
        generateStubs(conn)
    end

    kRPC.eval(:(Remote.change_connection($conn))) # whyyyyy
    @async stream_listener(str_conn)
    return conn
end

function SendMessage(conn::kRPCConnection, pcall::kPC)
    res = SendBiMessage(conn, krpc.schema.Request(calls=[pcall.pcall]))
    handle_potential_error(res)
    if pcall.rty != Nothing
        return getJuliaValue(res.results[1].value,pcall.rty)
    end
end

function SendMessage(conn::kRPCConnection, pcalls::AbstractArray{kPC})
    res = SendBiMessage(conn, krpc.schema.Request(calls=map(p->p.pcall, pcalls)))
    handle_potential_error(res)
    return [if pcalls[i].rty != Nothing getJuliaValue(res.results[i].value, pcalls[i].rty) else Nothing() end for i=1:length(pcalls)]
end

function kRPCDisconnect(conn::kRPCConnection)
    close(conn.conn)
end

function handle_potential_error(result) 
    if ProtoBuf.has_field(result, :error)
        throw(kRPC.make_error(result.error))
    end
end

function make_error(err::krpc.schema.Error)
    return "A remote RPC error occured.\nThe error occured in $(err.service).$(err.name):\n$(err.description)\n$(err.stack_trace)"
end