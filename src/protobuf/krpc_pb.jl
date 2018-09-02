# syntax: proto3
using Compat
using ProtoBuf
import ProtoBuf.meta

struct __enum_ConnectionRequest_Type <: ProtoEnum
    RPC::Int32
    STREAM::Int32
    __enum_ConnectionRequest_Type() = new(0,1)
end #struct __enum_ConnectionRequest_Type
const ConnectionRequest_Type = __enum_ConnectionRequest_Type()

mutable struct ConnectionRequest <: ProtoType
    _type::Int32
    client_name::AbstractString
    client_identifier::Array{UInt8,1}
    ConnectionRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ConnectionRequest

struct __enum_ConnectionResponse_Status <: ProtoEnum
    OK::Int32
    MALFORMED_MESSAGE::Int32
    TIMEOUT::Int32
    WRONG_TYPE::Int32
    __enum_ConnectionResponse_Status() = new(0,1,2,3)
end #struct __enum_ConnectionResponse_Status
const ConnectionResponse_Status = __enum_ConnectionResponse_Status()

mutable struct ConnectionResponse <: ProtoType
    status::Int32
    message::AbstractString
    client_identifier::Array{UInt8,1}
    ConnectionResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ConnectionResponse

mutable struct Argument <: ProtoType
    position::UInt32
    value::Array{UInt8,1}
    Argument(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Argument

mutable struct ProcedureCall <: ProtoType
    service::AbstractString
    procedure::AbstractString
    service_id::UInt32
    procedure_id::UInt32
    arguments::Base.Vector{Argument}
    ProcedureCall(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ProcedureCall
const __fnum_ProcedureCall = Int[1,2,4,5,3]
meta(t::Type{ProcedureCall}) = meta(t, ProtoBuf.DEF_REQ, __fnum_ProcedureCall, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)

mutable struct Request <: ProtoType
    calls::Base.Vector{ProcedureCall}
    Request(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Request

mutable struct Error <: ProtoType
    service::AbstractString
    name::AbstractString
    description::AbstractString
    stack_trace::AbstractString
    Error(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Error

mutable struct ProcedureResult <: ProtoType
    error::Error
    value::Array{UInt8,1}
    ProcedureResult(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ProcedureResult

mutable struct Response <: ProtoType
    error::Error
    results::Base.Vector{ProcedureResult}
    Response(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Response

mutable struct StreamResult <: ProtoType
    id::UInt64
    result::ProcedureResult
    StreamResult(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct StreamResult

mutable struct StreamUpdate <: ProtoType
    results::Base.Vector{StreamResult}
    StreamUpdate(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct StreamUpdate

mutable struct Class <: ProtoType
    name::AbstractString
    documentation::AbstractString
    Class(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Class

mutable struct EnumerationValue <: ProtoType
    name::AbstractString
    value::Int32
    documentation::AbstractString
    EnumerationValue(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct EnumerationValue

mutable struct Enumeration <: ProtoType
    name::AbstractString
    values::Base.Vector{EnumerationValue}
    documentation::AbstractString
    Enumeration(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Enumeration

mutable struct Exception <: ProtoType
    name::AbstractString
    documentation::AbstractString
    Exception(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Exception

struct __enum_Type_TypeCode <: ProtoEnum
    NONE::Int32
    DOUBLE::Int32
    FLOAT::Int32
    SINT32::Int32
    SINT64::Int32
    UINT32::Int32
    UINT64::Int32
    BOOL::Int32
    STRING::Int32
    BYTES::Int32
    CLASS::Int32
    ENUMERATION::Int32
    EVENT::Int32
    PROCEDURE_CALL::Int32
    STREAM::Int32
    STATUS::Int32
    SERVICES::Int32
    TUPLE::Int32
    LIST::Int32
    SET::Int32
    DICTIONARY::Int32
    __enum_Type_TypeCode() = new(0,1,2,3,4,5,6,7,8,9,100,101,200,201,202,203,204,300,301,302,303)
end #struct __enum_Type_TypeCode
const Type_TypeCode = __enum_Type_TypeCode()

mutable struct _Type <: ProtoType
    code::Int32
    service::AbstractString
    name::AbstractString
    types::Base.Vector{_Type}
    _Type(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct _Type

mutable struct Parameter <: ProtoType
    name::AbstractString
    _type::_Type
    default_value::Array{UInt8,1}
    Parameter(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Parameter

mutable struct Procedure <: ProtoType
    name::AbstractString
    parameters::Base.Vector{Parameter}
    return_type::_Type
    return_is_nullable::Bool
    documentation::AbstractString
    Procedure(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Procedure

mutable struct Service <: ProtoType
    name::AbstractString
    procedures::Base.Vector{Procedure}
    classes::Base.Vector{Class}
    enumerations::Base.Vector{Enumeration}
    exceptions::Base.Vector{Exception}
    documentation::AbstractString
    Service(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Service

mutable struct Services <: ProtoType
    services::Base.Vector{Service}
    Services(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Services

mutable struct Tuple_ <: ProtoType
    items::Base.Vector{Array{UInt8,1}}
    Tuple_(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Tuple

mutable struct List <: ProtoType
    items::Base.Vector{Array{UInt8,1}}
    List(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct List

mutable struct Set <: ProtoType
    items::Base.Vector{Array{UInt8,1}}
    Set(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Set

mutable struct DictionaryEntry <: ProtoType
    key::Array{UInt8,1}
    value::Array{UInt8,1}
    DictionaryEntry(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DictionaryEntry

mutable struct Dictionary <: ProtoType
    entries::Base.Vector{DictionaryEntry}
    Dictionary(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Dictionary

mutable struct Stream <: ProtoType
    id::UInt64
    Stream(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Stream

mutable struct Event <: ProtoType
    stream::Stream
    Event(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Event

mutable struct Status <: ProtoType
    version::AbstractString
    bytes_read::UInt64
    bytes_written::UInt64
    bytes_read_rate::Float32
    bytes_written_rate::Float32
    rpcs_executed::UInt64
    rpc_rate::Float32
    one_rpc_per_update::Bool
    max_time_per_update::UInt32
    adaptive_rate_control::Bool
    blocking_recv::Bool
    recv_timeout::UInt32
    time_per_rpc_update::Float32
    poll_time_per_rpc_update::Float32
    exec_time_per_rpc_update::Float32
    stream_rpcs::UInt32
    stream_rpcs_executed::UInt64
    stream_rpc_rate::Float32
    time_per_stream_update::Float32
    Status(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Status

mutable struct MultiplexedRequest <: ProtoType
    connection_request::ConnectionRequest
    request::Request
    MultiplexedRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct MultiplexedRequest

mutable struct MultiplexedResponse <: ProtoType
    response::Response
    stream_update::StreamUpdate
    MultiplexedResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct MultiplexedResponse

export ConnectionRequest_Type, ConnectionRequest, ConnectionResponse_Status, ConnectionResponse, Request, ProcedureCall, Argument, Response, ProcedureResult, Error, StreamUpdate, StreamResult, Services, Service, Procedure, Parameter, Class, Enumeration, EnumerationValue, Exception, Type_TypeCode, _Type, Tuple, List, Set, Dictionary, DictionaryEntry, Stream, Event, Status, MultiplexedRequest, MultiplexedResponse
