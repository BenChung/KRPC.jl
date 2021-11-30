module kRPC
using Sockets
using ProtoBuf

include("proto/krpc.jl")

abstract type Request{S, P, R} end

struct Listener
	streams::Dict{UInt64, Pair{Request, Int}}
	current_value
	channel::Channel
end

mutable struct kRPCConnection
    conn::TCPSocket
    stream_conn::TCPSocket
    identifier::Array{UInt8, 1}

    str_listener::Union{Nothing, Task}
    listeners::Dict{UInt64, Listener}
    active::Channel
end

include("raw.jl")
include("connection.jl")
include("types.jl")
include("message.jl")
include("streams.jl")
include("codegen.jl")
end
