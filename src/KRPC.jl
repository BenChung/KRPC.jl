module KRPC
using Sockets
using ProtoBuf
using LightXML
using UUIDs
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
    uuid::UUID
end

"""
A connection to Kerbal Space Program.
"""
mutable struct KRPCConnection
    conn::TCPSocket
    stream_conn::TCPSocket
    identifier::Array{UInt8, 1}

    str_listener::Union{Nothing, Task}
    one_to_many::Dict{UInt64, Array{UUID, 1}}
    listeners::Dict{UUID, Listener}
    active::Channel{Bool}
    semaphore::Base.Semaphore

    function KRPCConnection(conn::TCPSocket, stream_conn::TCPSocket, identifier::Array{UInt8, 1}, active::Channel{Bool})
        new(
            conn, stream_conn, identifier,
            Nothing(), Dict{UInt8, Array{UUID, 1}}(), Dict{UUID, Listener}(), active, Base.Semaphore(1)
        )
    end
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
@static if isfile(joinpath(@__DIR__, ("generated.jl")))
	include("generated.jl")
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
