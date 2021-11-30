function kerbal_connect(port::Int64, client_name::String)
    return kerbal_connect("localhost", port, port+1, client_name)
end

function connect_or_error(conn, cr :: krpc.schema.ConnectionRequest)
    SendRawProto(conn, cr)
    resp = readproto(RecvRawProto(conn), krpc.schema.ConnectionResponse())
    if resp.status == krpc.schema.ConnectionResponse_Status.MALFORMED_MESSAGE
        throw("Malfomed Initial Message, Check Version")
    elseif resp.status == krpc.schema.ConnectionResponse_Status.TIMEOUT
        throw("Timeout, check network")
    elseif resp.status == krpc.schema.ConnectionResponse_Status.WRONG_TYPE
        throw("Wrong type, yell at kRPC.jl maintainer")
    end
    return resp
end

function generateStubs(conn)
    #=
	cachepath = joinpath(@__DIR__, "..", "deps")
	genpath = joinpath(cachepath, "gen.jl")
	if isfile(genpath)
		kRPC.eval(:(include($genpath)))
	else
		mkpath(cachepath)
	    info = GetServices(conn)
        println(info)
	end
    =#
    serviceInfo = GetServices(conn)
    ast = generateHelpers(serviceInfo)
    eval(ast)
end

function kerbal_connect(client_name::String, host::String="localhost", port::Int64=50000, stream_port::Int64=50001)
    if lastindex(client_name) > 31
        throw(ArgumentError("client name too long"))
    end 

    conn = connect(host, port)
    str_conn = connect(host, stream_port)

    resp = connect_or_error(conn, krpc.schema.ConnectionRequest(client_name=client_name,_type=krpc.schema.ConnectionRequest_Type.RPC))
    connect_or_error(str_conn, krpc.schema.ConnectionRequest(client_identifier=resp.client_identifier,_type=krpc.schema.ConnectionRequest_Type.STREAM))

    active = Channel(0)
    conn = kRPCConnection(conn, str_conn, resp.client_identifier, Nothing(), Dict{UInt8, Listener}(), active)
    conn.str_listener = @async stream_listener(conn)
    bind(active, conn.str_listener)
    
    return conn
end


function kerbal_connect(f::Function, client_name::String, host::String="localhost", port::Int64=50000, stream_port::Int64=50001)
    kc = kerbal_connect(client_name, host, port, stream_port)
    try
        f(kc) 
    finally
        close(kc)
    end
end

function close(conn::kRPCConnection)
    try put!(conn.active, false) catch e end
    Base.close(conn.conn)
end

function handle_potential_error(result) 
    if ProtoBuf.hasproperty(result, :error)
        throw(kRPC.make_error(result.error))
    end
end

function make_error(err::krpc.schema.Error)
    return "A remote RPC error occured.\nThe error occured in $(err.service).$(err.name):\n$(err.description)\n$(err.stack_trace)"
end