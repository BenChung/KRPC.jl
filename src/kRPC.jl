__precompile__()
module kRPC
include("protobuf/krpc.jl")
using ProtoBuf
using Sockets
using Nullables

mutable struct kRPCConnection
    conn::TCPSocket
    stream_conn::TCPSocket
    identifier::Array{UInt8, 1}
    str_listener::Task
    running::Vector{Bool}
end

Base.show(io::IO, z::kRPCConnection) = print(io, "kRPC connection " * base64encode(z.identifier))

struct kStream 
    id::UInt64
end

mutable struct kStreamInfo
    listener::Function
    error::Nullable{String}
    typ::Type
    value::Any
end

mutable struct kStreamValue
    value::Any
end

struct kRPCException <: Exception
    message :: AbstractString
end

struct DelayedCall
    invocation::krpc.schema.ProcedureCall
    rtype::Type
end

struct DelayCalls
    calls::Array{DelayedCall, 1}
    DelayCalls()=new(DelayedCall[])
end

struct kEvent end
struct kPC
    pcall::krpc.schema.ProcedureCall
    rty::Union{Type,Nothing}
end

include("types.jl")
include("raw.jl")
include("codegen.jl")
include("streams.jl")
include("connection.jl")

export kRPCConnection, kEvent, kPC, kStream, DelayCalls, kStreamValue
export kRPCConnect, close
export add_stream, add_multiple_streams, clear_streams

macro checkbuilt() 
    if isfile("../dep/gen.jl")
        return :(include("../dep/gen.jl"))
    elseif !@isdefined kRPCBuild
        error("kRPC not properly built; run Pkg.build(\"kRPC\") and follow prompts.")
    end
end
#@checkbuilt()


end
