module KRPC
using Sockets
using ProtoBuf
using LightXML
import MacroTools

include("proto/krpc.jl")

abstract type Request{S, P, R} end

"""
KRPC stream listener. See `add_stream` for usage information.
"""
struct Listener{T}
	streams::Dict{UInt64, Pair{Request, Int}}
	connection::T
	current_value
	channel::Channel
end

"""
A connection to Kerbal Space Program.
"""
mutable struct KRPCConnection
    conn::TCPSocket
    stream_conn::TCPSocket
    identifier::Array{UInt8, 1}

    str_listener::Union{Nothing, Task}
    listeners::Dict{UInt64, Listener}
    active::Channel
end

function Base.show(io::IO, conn::KRPCConnection) 
	print(io, "KRPC Connection(main fd: $(conn.conn), stream fd: $(conn.stream_conn))")
end

include("raw.jl")
include("connection.jl")
include("types.jl")
include("message.jl")
include("streams.jl")
include("codegen.jl")
if isfile("generated.jl")
	include("generated.jl")
	include("aftertypes.jl")
end

struct AddStream_Phantom <: Request{:KRPC, :AddStream, kRPCTypes.kStream}
    call::KRPC.Request
    start::Bool
end
struct RemoveStream_Phantom <: Request{:KRPC, :RemoveStream, Nothing}
    id::UInt64
end
struct GetStatus_Phantom <: Request{:KRPC, :GetStatus, kRPCTypes.Service} end

export kerbal_connect, kerbal, add_stream, generate_stubs

end
