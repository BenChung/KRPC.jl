# syntax: proto3
using Compat
using ProtoBuf
import ProtoBuf.meta
import Base: hash, isequal, ==

type __enum_ConnectionRequest_Type <: ProtoEnum
    RPC::Int32
    STREAM::Int32
    __enum_ConnectionRequest_Type() = new(0,1)
end #type __enum_ConnectionRequest_Type
const ConnectionRequest_Type = __enum_ConnectionRequest_Type()

type ConnectionRequest
    _type::Int32
    client_name::AbstractString
    client_identifier::Array{UInt8,1}
    ConnectionRequest(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type ConnectionRequest
hash(v::ConnectionRequest) = ProtoBuf.protohash(v)
isequal(v1::ConnectionRequest, v2::ConnectionRequest) = ProtoBuf.protoisequal(v1, v2)
==(v1::ConnectionRequest, v2::ConnectionRequest) = ProtoBuf.protoeq(v1, v2)

type __enum_ConnectionResponse_Status <: ProtoEnum
    OK::Int32
    MALFORMED_MESSAGE::Int32
    TIMEOUT::Int32
    WRONG_TYPE::Int32
    __enum_ConnectionResponse_Status() = new(0,1,2,3)
end #type __enum_ConnectionResponse_Status
const ConnectionResponse_Status = __enum_ConnectionResponse_Status()

type ConnectionResponse
    status::Int32
    message::AbstractString
    client_identifier::Array{UInt8,1}
    ConnectionResponse(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type ConnectionResponse
hash(v::ConnectionResponse) = ProtoBuf.protohash(v)
isequal(v1::ConnectionResponse, v2::ConnectionResponse) = ProtoBuf.protoisequal(v1, v2)
==(v1::ConnectionResponse, v2::ConnectionResponse) = ProtoBuf.protoeq(v1, v2)

type Argument
    position::UInt32
    value::Array{UInt8,1}
    Argument(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Argument
hash(v::Argument) = ProtoBuf.protohash(v)
isequal(v1::Argument, v2::Argument) = ProtoBuf.protoisequal(v1, v2)
==(v1::Argument, v2::Argument) = ProtoBuf.protoeq(v1, v2)

type ProcedureCall
    service::AbstractString
    procedure::AbstractString
    arguments::Array{Argument,1}
    ProcedureCall(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type ProcedureCall
hash(v::ProcedureCall) = ProtoBuf.protohash(v)
isequal(v1::ProcedureCall, v2::ProcedureCall) = ProtoBuf.protoisequal(v1, v2)
==(v1::ProcedureCall, v2::ProcedureCall) = ProtoBuf.protoeq(v1, v2)

type Request
    calls::Array{ProcedureCall,1}
    Request(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Request
hash(v::Request) = ProtoBuf.protohash(v)
isequal(v1::Request, v2::Request) = ProtoBuf.protoisequal(v1, v2)
==(v1::Request, v2::Request) = ProtoBuf.protoeq(v1, v2)

type Error
    service::AbstractString
    name::AbstractString
    description::AbstractString
    stack_trace::AbstractString
    Error(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Error
hash(v::Error) = ProtoBuf.protohash(v)
isequal(v1::Error, v2::Error) = ProtoBuf.protoisequal(v1, v2)
==(v1::Error, v2::Error) = ProtoBuf.protoeq(v1, v2)

type ProcedureResult
    error::Error
    value::Array{UInt8,1}
    ProcedureResult(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type ProcedureResult
hash(v::ProcedureResult) = ProtoBuf.protohash(v)
isequal(v1::ProcedureResult, v2::ProcedureResult) = ProtoBuf.protoisequal(v1, v2)
==(v1::ProcedureResult, v2::ProcedureResult) = ProtoBuf.protoeq(v1, v2)

type Response
    error::Error
    results::Array{ProcedureResult,1}
    Response(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Response
hash(v::Response) = ProtoBuf.protohash(v)
isequal(v1::Response, v2::Response) = ProtoBuf.protoisequal(v1, v2)
==(v1::Response, v2::Response) = ProtoBuf.protoeq(v1, v2)

type StreamResult
    id::UInt64
    result::ProcedureResult
    StreamResult(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type StreamResult
hash(v::StreamResult) = ProtoBuf.protohash(v)
isequal(v1::StreamResult, v2::StreamResult) = ProtoBuf.protoisequal(v1, v2)
==(v1::StreamResult, v2::StreamResult) = ProtoBuf.protoeq(v1, v2)

type StreamUpdate
    results::Array{StreamResult,1}
    StreamUpdate(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type StreamUpdate
hash(v::StreamUpdate) = ProtoBuf.protohash(v)
isequal(v1::StreamUpdate, v2::StreamUpdate) = ProtoBuf.protoisequal(v1, v2)
==(v1::StreamUpdate, v2::StreamUpdate) = ProtoBuf.protoeq(v1, v2)

type Class
    name::AbstractString
    documentation::AbstractString
    Class(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Class
hash(v::Class) = ProtoBuf.protohash(v)
isequal(v1::Class, v2::Class) = ProtoBuf.protoisequal(v1, v2)
==(v1::Class, v2::Class) = ProtoBuf.protoeq(v1, v2)

type EnumerationValue
    name::AbstractString
    value::Int32
    documentation::AbstractString
    EnumerationValue(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type EnumerationValue
hash(v::EnumerationValue) = ProtoBuf.protohash(v)
isequal(v1::EnumerationValue, v2::EnumerationValue) = ProtoBuf.protoisequal(v1, v2)
==(v1::EnumerationValue, v2::EnumerationValue) = ProtoBuf.protoeq(v1, v2)

type Enumeration
    name::AbstractString
    values::Array{EnumerationValue,1}
    documentation::AbstractString
    Enumeration(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Enumeration
hash(v::Enumeration) = ProtoBuf.protohash(v)
isequal(v1::Enumeration, v2::Enumeration) = ProtoBuf.protoisequal(v1, v2)
==(v1::Enumeration, v2::Enumeration) = ProtoBuf.protoeq(v1, v2)

type Exception
    name::AbstractString
    documentation::AbstractString
    Exception(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Exception
hash(v::Exception) = ProtoBuf.protohash(v)
isequal(v1::Exception, v2::Exception) = ProtoBuf.protoisequal(v1, v2)
==(v1::Exception, v2::Exception) = ProtoBuf.protoeq(v1, v2)

type __enum_Type_TypeCode <: ProtoEnum
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
end #type __enum_Type_TypeCode
const Type_TypeCode = __enum_Type_TypeCode()

type _Type
    code::Int32
    service::AbstractString
    name::AbstractString
    types::Array{_Type,1}
    _Type(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type _Type
hash(v::_Type) = ProtoBuf.protohash(v)
isequal(v1::_Type, v2::_Type) = ProtoBuf.protoisequal(v1, v2)
==(v1::_Type, v2::_Type) = ProtoBuf.protoeq(v1, v2)

type Parameter
    name::AbstractString
    _type::_Type
    default_value::Array{UInt8,1}
    Parameter(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Parameter
hash(v::Parameter) = ProtoBuf.protohash(v)
isequal(v1::Parameter, v2::Parameter) = ProtoBuf.protoisequal(v1, v2)
==(v1::Parameter, v2::Parameter) = ProtoBuf.protoeq(v1, v2)

type Procedure
    name::AbstractString
    parameters::Array{Parameter,1}
    return_type::_Type
    return_is_nullable::Bool
    documentation::AbstractString
    Procedure(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Procedure
hash(v::Procedure) = ProtoBuf.protohash(v)
isequal(v1::Procedure, v2::Procedure) = ProtoBuf.protoisequal(v1, v2)
==(v1::Procedure, v2::Procedure) = ProtoBuf.protoeq(v1, v2)

type Service
    name::AbstractString
    procedures::Array{Procedure,1}
    classes::Array{Class,1}
    enumerations::Array{Enumeration,1}
    exceptions::Array{Exception,1}
    documentation::AbstractString
    Service(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Service
hash(v::Service) = ProtoBuf.protohash(v)
isequal(v1::Service, v2::Service) = ProtoBuf.protoisequal(v1, v2)
==(v1::Service, v2::Service) = ProtoBuf.protoeq(v1, v2)

type Services
    services::Array{Service,1}
    Services(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Services
hash(v::Services) = ProtoBuf.protohash(v)
isequal(v1::Services, v2::Services) = ProtoBuf.protoisequal(v1, v2)
==(v1::Services, v2::Services) = ProtoBuf.protoeq(v1, v2)

type Tuple_
    items::Array{Array{UInt8,1},1}
    Tuple_(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Tuple_
hash(v::Tuple_) = ProtoBuf.protohash(v)
isequal(v1::Tuple_, v2::Tuple_) = ProtoBuf.protoisequal(v1, v2)
==(v1::Tuple_, v2::Tuple_) = ProtoBuf.protoeq(v1, v2)

type List
    items::Array{Array{UInt8,1},1}
    List(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type List
hash(v::List) = ProtoBuf.protohash(v)
isequal(v1::List, v2::List) = ProtoBuf.protoisequal(v1, v2)
==(v1::List, v2::List) = ProtoBuf.protoeq(v1, v2)

type Set
    items::Array{Array{UInt8,1},1}
    Set(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Set
hash(v::Set) = ProtoBuf.protohash(v)
isequal(v1::Set, v2::Set) = ProtoBuf.protoisequal(v1, v2)
==(v1::Set, v2::Set) = ProtoBuf.protoeq(v1, v2)

type DictionaryEntry
    key::Array{UInt8,1}
    value::Array{UInt8,1}
    DictionaryEntry(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type DictionaryEntry
hash(v::DictionaryEntry) = ProtoBuf.protohash(v)
isequal(v1::DictionaryEntry, v2::DictionaryEntry) = ProtoBuf.protoisequal(v1, v2)
==(v1::DictionaryEntry, v2::DictionaryEntry) = ProtoBuf.protoeq(v1, v2)

type Dictionary
    entries::Array{DictionaryEntry,1}
    Dictionary(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Dictionary
hash(v::Dictionary) = ProtoBuf.protohash(v)
isequal(v1::Dictionary, v2::Dictionary) = ProtoBuf.protoisequal(v1, v2)
==(v1::Dictionary, v2::Dictionary) = ProtoBuf.protoeq(v1, v2)

type Stream
    id::UInt64
    Stream(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Stream
hash(v::Stream) = ProtoBuf.protohash(v)
isequal(v1::Stream, v2::Stream) = ProtoBuf.protoisequal(v1, v2)
==(v1::Stream, v2::Stream) = ProtoBuf.protoeq(v1, v2)

type Event
    stream::Stream
    Event(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Event
hash(v::Event) = ProtoBuf.protohash(v)
isequal(v1::Event, v2::Event) = ProtoBuf.protoisequal(v1, v2)
==(v1::Event, v2::Event) = ProtoBuf.protoeq(v1, v2)

type Status
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
end #type Status
hash(v::Status) = ProtoBuf.protohash(v)
isequal(v1::Status, v2::Status) = ProtoBuf.protoisequal(v1, v2)
==(v1::Status, v2::Status) = ProtoBuf.protoeq(v1, v2)

export ConnectionRequest_Type, ConnectionRequest, ConnectionResponse_Status, ConnectionResponse, Request, ProcedureCall, Argument, Response, ProcedureResult, Error, StreamUpdate, StreamResult, Services, Service, Procedure, Parameter, Class, Enumeration, EnumerationValue, Exception, Type_TypeCode, _Type, Tuple_, List, Set, Dictionary, DictionaryEntry, Stream, Event, Status
