__precompile__()
module kRPC
include("protobuf/krpc.jl")
using ProtoBuf

type kRPCConnection
    conn::TCPSocket
    stream_conn::TCPSocket
    identifier::Array{UInt8, 1}
end

Base.show(io::IO, z::kRPCConnection) = print(io, "kRPC connection " * base64encode(z.identifier))

type kStream 
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

type kRPCException <: Exception
    message :: AbstractString
end

type DelayedCall
    invocation::krpc.schema.ProcedureCall
    rtype::Type
end

type DelayCalls
    calls::Array{DelayedCall, 1}
    DelayCalls()=new(DelayedCall[])
end

type kEvent end
type kPC
    pcall::krpc.schema.ProcedureCall
    rty::Union{Type,Void}
end

include("types.jl")
include("raw.jl")
include("codegen.jl")
include("streams.jl")
include("connection.jl")

export kRPCConnection, kEvent, kPC, kStream, DelayCalls, kStreamValue
export kRPCConnect, kRPCDisconnect
export kRPCConnect
export add_stream, add_multiple_streams, clear_streams

include("../dep/gen.jl")


end
