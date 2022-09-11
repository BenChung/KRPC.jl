function connect_or_error(conn, cr::krpc.schema.ConnectionRequest)
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

"""
    generate_stubs(conn::KRPCConnection; save_file::Bool=false)

Generate (and `eval`) the stubs offered by the server at `conn`. If `save_file` is `true`,
then the stubs will be saved into the package's directory and will be imported
the next time the wrapper is loaded.

Note that world-age restricts the use of the generated and eval'ed stubs until after the
latest age can be accessed, either by returning to the REPL, using Base.invokelatest, or
through another call to `eval`. Keep this in mind if writing a monolithic script - a function
that calls generate_stubs won't be able to immediately access the new definitions.

For more information on world age, see the documentation at https://docs.julialang.org/en/v1/manual/methods/#Redefining-Methods-1
or the paper on the topic at https://arxiv.org/abs/2010.07516.

# Examples
```julia-repl
julia> generate_stubs(conn)
```
"""
function generate_stubs(conn; save_file=false)
    serviceInfo = GetServices(conn)
    status = kerbal(conn, GetStatus_Phantom())
    ast = generateHelpers(serviceInfo, status.status)
    eval(ast)
    if save_file 
        open(joinpath(@__DIR__, "generated.jl"), "w") do io; 
            println(io, MacroTools.striplines(ast))
        end
    end
end

"""
    kerbal_connect(client_name::String, host::String="localhost", port::Int64=50000, stream_port::Int64=50001)

Connect to `host` at port `port` (with stream port `stream_port`) and with the displayed name `client_name`.
Default values are set up for the default localhost configuration. 

# Examples

Connect to localhost as "test" and using the default ports:
```julia-repl
julia> conn = kerbal_connect("test")
```

Connect to localhost using ports 9001/9002:
```julia-repl
julia> conn = kerbal_connect("test", "localhost", 9001, 9002)
```

Connect to a server at the IP address 192.168.1.1, and ports 9001/9002:
```julia-repl
julia> conn = kerbal_connect("test", "192.168.1.1", 9001, 9002)
```
"""
function kerbal_connect(client_name::String, host::String="localhost", port::Int64=50000, stream_port::Int64=50001)
    if lastindex(client_name) > 31
        throw(ArgumentError("client name too long"))
    end 

    conn = connect(host, port)
    str_conn = connect(host, stream_port)

    resp = connect_or_error(conn, krpc.schema.ConnectionRequest(client_name=client_name,_type=krpc.schema.ConnectionRequest_Type.RPC))
    connect_or_error(str_conn, krpc.schema.ConnectionRequest(client_identifier=resp.client_identifier,_type=krpc.schema.ConnectionRequest_Type.STREAM))

    active = Channel(0)
    conn = KRPCConnection(conn, str_conn, resp.client_identifier, Nothing(), Dict{UInt8, Listener}(), active)
    conn.str_listener = @async stream_listener(conn)
    bind(active, conn.str_listener)

    if isdefined(KRPC, :Interface)
        server_version = kerbal(conn, GetStatus_Phantom()).status.version
        if Interface.version != server_version
            println("Warning: current stubs version $(Interface.version) is not equal to server's version $server_version")
            println("some functions may not work correctly (or produce an error). Run KRPC.generateStubs(conn) to generate a new (one-time) copy of the stubs.")
        end
    end
    
    return conn
end

struct KRPCError <: Exception
    service::String
    name::String
    description::String
    stack_trace::String
    KRPCError(err::krpc.schema.Error) = new(err.service, err.name, err.description, err.stack_trace)
end
function Base.showerror(io::IO, err::KRPCError) 
    println(io, "The KRPC server returned an error.")
    println(io, "Service: $(err.service)")
    println(io, "Description:")
    println(io, "===============")
    println(io, unescape_string(err.description))
    println(io, "")
    println(io, "Server internal stack trace:")
    println(io, "===============")
    println(io, "$(err.name)")
    println(io, unescape_string(err.stack_trace))

end

"""
    kerbal_connect(f::Function, client_name::String, host::String="localhost", port::Int64=50000, stream_port::Int64=50001)

Do-notation version of `kerbal_connect`, automatically closing the connection after termination of the do block.

# Examples

Connect to localhost as "test" and using the default ports:
```julia-repl
julia> kerbal_connect("test") do conn
         println("connected!")
       end
```
"""
function kerbal_connect(f::Function, client_name::String, host::String="localhost", port::Int64=50000, stream_port::Int64=50001)
    kc = kerbal_connect(client_name, host, port, stream_port)
    try
        f(kc) 
    finally
        close(kc)
    end
end

function Base.close(conn::KRPCConnection)
    try put!(conn.active, false) catch e end
    Base.close(conn.conn)
end

function handle_potential_error(result) 
    if ProtoBuf.hasproperty(result, :error)
        throw(KRPCError(result.error))
    end
    for result in result.results
        if ProtoBuf.hasproperty(result, :error)
            throw(KRPCError(result.error))
        end
    end
end
