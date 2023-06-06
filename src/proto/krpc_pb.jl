# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const ConnectionRequest_Type = (;[
    Symbol("RPC") => Int32(0),
    Symbol("STREAM") => Int32(1),
]...)

mutable struct ConnectionRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConnectionRequest(; kwargs...)
        obj = new(meta(ConnectionRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ConnectionRequest
const __meta_ConnectionRequest = Ref{ProtoMeta}()
function meta(::Type{ConnectionRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConnectionRequest)
            __meta_ConnectionRequest[] = target = ProtoMeta(ConnectionRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32, :client_name => AbstractString, :client_identifier => Vector{UInt8}]
            meta(target, ConnectionRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ConnectionRequest[]
    end
end
function Base.getproperty(obj::ConnectionRequest, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :client_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :client_identifier
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

const ConnectionResponse_Status = (;[
    Symbol("OK") => Int32(0),
    Symbol("MALFORMED_MESSAGE") => Int32(1),
    Symbol("TIMEOUT") => Int32(2),
    Symbol("WRONG_TYPE") => Int32(3),
]...)

mutable struct ConnectionResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConnectionResponse(; kwargs...)
        obj = new(meta(ConnectionResponse), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ConnectionResponse
const __meta_ConnectionResponse = Ref{ProtoMeta}()
function meta(::Type{ConnectionResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConnectionResponse)
            __meta_ConnectionResponse[] = target = ProtoMeta(ConnectionResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:status => Int32, :message => AbstractString, :client_identifier => Vector{UInt8}]
            meta(target, ConnectionResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ConnectionResponse[]
    end
end
function Base.getproperty(obj::ConnectionResponse, name::Symbol)
    if name === :status
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :message
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :client_identifier
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct Argument <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Argument(; kwargs...)
        obj = new(meta(Argument), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Argument
const __meta_Argument = Ref{ProtoMeta}()
function meta(::Type{Argument})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Argument)
            __meta_Argument[] = target = ProtoMeta(Argument)
            allflds = Pair{Symbol,Union{Type,String}}[:position => UInt32, :value => Vector{UInt8}]
            meta(target, Argument, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Argument[]
    end
end
function Base.getproperty(obj::Argument, name::Symbol)
    if name === :position
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct ProcedureCall <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProcedureCall(; kwargs...)
        obj = new(meta(ProcedureCall), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ProcedureCall
const __meta_ProcedureCall = Ref{ProtoMeta}()
function meta(::Type{ProcedureCall})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProcedureCall)
            __meta_ProcedureCall[] = target = ProtoMeta(ProcedureCall)
            fnum = Int[1,2,4,5,3]
            allflds = Pair{Symbol,Union{Type,String}}[:service => AbstractString, :procedure => AbstractString, :service_id => UInt32, :procedure_id => UInt32, :arguments => Base.Vector{Argument}]
            meta(target, ProcedureCall, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProcedureCall[]
    end
end
function Base.getproperty(obj::ProcedureCall, name::Symbol)
    if name === :service
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :procedure
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :service_id
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :procedure_id
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :arguments
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Argument}
    else
        getfield(obj, name)
    end
end

mutable struct Request <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Request(; kwargs...)
        obj = new(meta(Request), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Request
const __meta_Request = Ref{ProtoMeta}()
function meta(::Type{Request})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Request)
            __meta_Request[] = target = ProtoMeta(Request)
            allflds = Pair{Symbol,Union{Type,String}}[:calls => Base.Vector{ProcedureCall}]
            meta(target, Request, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Request[]
    end
end
function Base.getproperty(obj::Request, name::Symbol)
    if name === :calls
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProcedureCall}
    else
        getfield(obj, name)
    end
end

mutable struct Error <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Error(; kwargs...)
        obj = new(meta(Error), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Error
const __meta_Error = Ref{ProtoMeta}()
function meta(::Type{Error})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Error)
            __meta_Error[] = target = ProtoMeta(Error)
            allflds = Pair{Symbol,Union{Type,String}}[:service => AbstractString, :name => AbstractString, :description => AbstractString, :stack_trace => AbstractString]
            meta(target, Error, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Error[]
    end
end
function Base.getproperty(obj::Error, name::Symbol)
    if name === :service
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :stack_trace
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProcedureResult <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProcedureResult(; kwargs...)
        obj = new(meta(ProcedureResult), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ProcedureResult
const __meta_ProcedureResult = Ref{ProtoMeta}()
function meta(::Type{ProcedureResult})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProcedureResult)
            __meta_ProcedureResult[] = target = ProtoMeta(ProcedureResult)
            allflds = Pair{Symbol,Union{Type,String}}[:error => Error, :value => Vector{UInt8}]
            meta(target, ProcedureResult, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProcedureResult[]
    end
end
function Base.getproperty(obj::ProcedureResult, name::Symbol)
    if name === :error
        return (obj.__protobuf_jl_internal_values[name])::Error
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct Response <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Response(; kwargs...)
        obj = new(meta(Response), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Response
const __meta_Response = Ref{ProtoMeta}()
function meta(::Type{Response})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Response)
            __meta_Response[] = target = ProtoMeta(Response)
            allflds = Pair{Symbol,Union{Type,String}}[:error => Error, :results => Base.Vector{ProcedureResult}]
            meta(target, Response, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Response[]
    end
end
function Base.getproperty(obj::Response, name::Symbol)
    if name === :error
        return (obj.__protobuf_jl_internal_values[name])::Error
    elseif name === :results
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProcedureResult}
    else
        getfield(obj, name)
    end
end

mutable struct StreamResult <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StreamResult(; kwargs...)
        obj = new(meta(StreamResult), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct StreamResult
const __meta_StreamResult = Ref{ProtoMeta}()
function meta(::Type{StreamResult})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StreamResult)
            __meta_StreamResult[] = target = ProtoMeta(StreamResult)
            allflds = Pair{Symbol,Union{Type,String}}[:id => UInt64, :result => ProcedureResult]
            meta(target, StreamResult, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StreamResult[]
    end
end
function Base.getproperty(obj::StreamResult, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :result
        return (obj.__protobuf_jl_internal_values[name])::ProcedureResult
    else
        getfield(obj, name)
    end
end

mutable struct StreamUpdate <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StreamUpdate(; kwargs...)
        obj = new(meta(StreamUpdate), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct StreamUpdate
const __meta_StreamUpdate = Ref{ProtoMeta}()
function meta(::Type{StreamUpdate})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StreamUpdate)
            __meta_StreamUpdate[] = target = ProtoMeta(StreamUpdate)
            allflds = Pair{Symbol,Union{Type,String}}[:results => Base.Vector{StreamResult}]
            meta(target, StreamUpdate, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StreamUpdate[]
    end
end
function Base.getproperty(obj::StreamUpdate, name::Symbol)
    if name === :results
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{StreamResult}
    else
        getfield(obj, name)
    end
end

mutable struct Class <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Class(; kwargs...)
        obj = new(meta(Class), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Class
const __meta_Class = Ref{ProtoMeta}()
function meta(::Type{Class})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Class)
            __meta_Class[] = target = ProtoMeta(Class)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :documentation => AbstractString]
            meta(target, Class, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Class[]
    end
end
function Base.getproperty(obj::Class, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :documentation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct EnumerationValue <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function EnumerationValue(; kwargs...)
        obj = new(meta(EnumerationValue), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct EnumerationValue
const __meta_EnumerationValue = Ref{ProtoMeta}()
function meta(::Type{EnumerationValue})
    ProtoBuf.metalock() do
        if !isassigned(__meta_EnumerationValue)
            __meta_EnumerationValue[] = target = ProtoMeta(EnumerationValue)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :value => Int32, :documentation => AbstractString]
            meta(target, EnumerationValue, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_EnumerationValue[]
    end
end
function Base.getproperty(obj::EnumerationValue, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :documentation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Enumeration <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Enumeration(; kwargs...)
        obj = new(meta(Enumeration), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Enumeration
const __meta_Enumeration = Ref{ProtoMeta}()
function meta(::Type{Enumeration})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Enumeration)
            __meta_Enumeration[] = target = ProtoMeta(Enumeration)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :values => Base.Vector{EnumerationValue}, :documentation => AbstractString]
            meta(target, Enumeration, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Enumeration[]
    end
end
function Base.getproperty(obj::Enumeration, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :values
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{EnumerationValue}
    elseif name === :documentation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Exception <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Exception(; kwargs...)
        obj = new(meta(Exception), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Exception
const __meta_Exception = Ref{ProtoMeta}()
function meta(::Type{Exception})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Exception)
            __meta_Exception[] = target = ProtoMeta(Exception)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :documentation => AbstractString]
            meta(target, Exception, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Exception[]
    end
end
function Base.getproperty(obj::Exception, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :documentation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

const Type_TypeCode = (;[
    Symbol("NONE") => Int32(0),
    Symbol("DOUBLE") => Int32(1),
    Symbol("FLOAT") => Int32(2),
    Symbol("SINT32") => Int32(3),
    Symbol("SINT64") => Int32(4),
    Symbol("UINT32") => Int32(5),
    Symbol("UINT64") => Int32(6),
    Symbol("BOOL") => Int32(7),
    Symbol("STRING") => Int32(8),
    Symbol("BYTES") => Int32(9),
    Symbol("CLASS") => Int32(100),
    Symbol("ENUMERATION") => Int32(101),
    Symbol("EVENT") => Int32(200),
    Symbol("PROCEDURE_CALL") => Int32(201),
    Symbol("STREAM") => Int32(202),
    Symbol("STATUS") => Int32(203),
    Symbol("SERVICES") => Int32(204),
    Symbol("TUPLE") => Int32(300),
    Symbol("LIST") => Int32(301),
    Symbol("SET") => Int32(302),
    Symbol("DICTIONARY") => Int32(303),
]...)

mutable struct _Type <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function _Type(; kwargs...)
        obj = new(meta(_Type), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct _Type
const __meta__Type = Ref{ProtoMeta}()
function meta(::Type{_Type})
    ProtoBuf.metalock() do
        if !isassigned(__meta__Type)
            __meta__Type[] = target = ProtoMeta(_Type)
            allflds = Pair{Symbol,Union{Type,String}}[:code => Int32, :service => AbstractString, :name => AbstractString, :types => Base.Vector{_Type}]
            meta(target, _Type, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta__Type[]
    end
end
function Base.getproperty(obj::_Type, name::Symbol)
    if name === :code
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :service
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :types
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{_Type}
    else
        getfield(obj, name)
    end
end

mutable struct Parameter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Parameter(; kwargs...)
        obj = new(meta(Parameter), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Parameter
const __meta_Parameter = Ref{ProtoMeta}()
function meta(::Type{Parameter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Parameter)
            __meta_Parameter[] = target = ProtoMeta(Parameter)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :_type => _Type, :default_value => Vector{UInt8}]
            meta(target, Parameter, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Parameter[]
    end
end
function Base.getproperty(obj::Parameter, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::_Type
    elseif name === :default_value
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

const Procedure_GameScene = (;[
    Symbol("SPACE_CENTER") => Int32(0),
    Symbol("FLIGHT") => Int32(1),
    Symbol("TRACKING_STATION") => Int32(2),
    Symbol("EDITOR_VAB") => Int32(3),
    Symbol("EDITOR_SPH") => Int32(4),
    Symbol("MISSION_BUILDER") => Int32(5),
]...)

mutable struct Procedure <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Procedure(; kwargs...)
        obj = new(meta(Procedure), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Procedure
const __meta_Procedure = Ref{ProtoMeta}()
function meta(::Type{Procedure})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Procedure)
            __meta_Procedure[] = target = ProtoMeta(Procedure)
            fnum = Int[1,2,3,4,6,5]
            pack = Symbol[:game_scenes]
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :parameters => Base.Vector{Parameter}, :return_type => _Type, :return_is_nullable => Bool, :game_scenes => Base.Vector{Int32}, :documentation => AbstractString]
            meta(target, Procedure, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Procedure[]
    end
end
function Base.getproperty(obj::Procedure, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :parameters
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Parameter}
    elseif name === :return_type
        return (obj.__protobuf_jl_internal_values[name])::_Type
    elseif name === :return_is_nullable
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :game_scenes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :documentation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Service <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Service(; kwargs...)
        obj = new(meta(Service), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Service
const __meta_Service = Ref{ProtoMeta}()
function meta(::Type{Service})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Service)
            __meta_Service[] = target = ProtoMeta(Service)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :procedures => Base.Vector{Procedure}, :classes => Base.Vector{Class}, :enumerations => Base.Vector{Enumeration}, :exceptions => Base.Vector{Exception}, :documentation => AbstractString]
            meta(target, Service, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Service[]
    end
end
function Base.getproperty(obj::Service, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :procedures
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Procedure}
    elseif name === :classes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Class}
    elseif name === :enumerations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Enumeration}
    elseif name === :exceptions
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Exception}
    elseif name === :documentation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Services <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Services(; kwargs...)
        obj = new(meta(Services), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Services
const __meta_Services = Ref{ProtoMeta}()
function meta(::Type{Services})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Services)
            __meta_Services[] = target = ProtoMeta(Services)
            allflds = Pair{Symbol,Union{Type,String}}[:services => Base.Vector{Service}]
            meta(target, Services, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Services[]
    end
end
function Base.getproperty(obj::Services, name::Symbol)
    if name === :services
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Service}
    else
        getfield(obj, name)
    end
end

mutable struct Tuple <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Tuple(; kwargs...)
        obj = new(meta(Tuple), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Tuple
const __meta_Tuple = Ref{ProtoMeta}()
function meta(::Type{Tuple})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Tuple)
            __meta_Tuple[] = target = ProtoMeta(Tuple)
            allflds = Pair{Symbol,Union{Type,String}}[:items => Base.Vector{Vector{UInt8}}]
            meta(target, Tuple, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Tuple[]
    end
end
function Base.getproperty(obj::Tuple, name::Symbol)
    if name === :items
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    else
        getfield(obj, name)
    end
end

mutable struct List <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function List(; kwargs...)
        obj = new(meta(List), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct List
const __meta_List = Ref{ProtoMeta}()
function meta(::Type{List})
    ProtoBuf.metalock() do
        if !isassigned(__meta_List)
            __meta_List[] = target = ProtoMeta(List)
            allflds = Pair{Symbol,Union{Type,String}}[:items => Base.Vector{Vector{UInt8}}]
            meta(target, List, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_List[]
    end
end
function Base.getproperty(obj::List, name::Symbol)
    if name === :items
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    else
        getfield(obj, name)
    end
end

mutable struct _Set <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function _Set(; kwargs...)
        obj = new(meta(_Set), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct _Set
const __meta__Set = Ref{ProtoMeta}()
function meta(::Type{_Set})
    ProtoBuf.metalock() do
        if !isassigned(__meta__Set)
            __meta__Set[] = target = ProtoMeta(_Set)
            allflds = Pair{Symbol,Union{Type,String}}[:items => Base.Vector{Vector{UInt8}}]
            meta(target, _Set, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta__Set[]
    end
end
function Base.getproperty(obj::_Set, name::Symbol)
    if name === :items
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    else
        getfield(obj, name)
    end
end

mutable struct DictionaryEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DictionaryEntry(; kwargs...)
        obj = new(meta(DictionaryEntry), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct DictionaryEntry
const __meta_DictionaryEntry = Ref{ProtoMeta}()
function meta(::Type{DictionaryEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DictionaryEntry)
            __meta_DictionaryEntry[] = target = ProtoMeta(DictionaryEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => Vector{UInt8}, :value => Vector{UInt8}]
            meta(target, DictionaryEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DictionaryEntry[]
    end
end
function Base.getproperty(obj::DictionaryEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct Dictionary <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Dictionary(; kwargs...)
        obj = new(meta(Dictionary), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Dictionary
const __meta_Dictionary = Ref{ProtoMeta}()
function meta(::Type{Dictionary})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Dictionary)
            __meta_Dictionary[] = target = ProtoMeta(Dictionary)
            allflds = Pair{Symbol,Union{Type,String}}[:entries => Base.Vector{DictionaryEntry}]
            meta(target, Dictionary, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Dictionary[]
    end
end
function Base.getproperty(obj::Dictionary, name::Symbol)
    if name === :entries
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{DictionaryEntry}
    else
        getfield(obj, name)
    end
end

mutable struct Stream <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Stream(; kwargs...)
        obj = new(meta(Stream), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Stream
const __meta_Stream = Ref{ProtoMeta}()
function meta(::Type{Stream})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Stream)
            __meta_Stream[] = target = ProtoMeta(Stream)
            allflds = Pair{Symbol,Union{Type,String}}[:id => UInt64]
            meta(target, Stream, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Stream[]
    end
end
function Base.getproperty(obj::Stream, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct Event <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Event(; kwargs...)
        obj = new(meta(Event), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Event
const __meta_Event = Ref{ProtoMeta}()
function meta(::Type{Event})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Event)
            __meta_Event[] = target = ProtoMeta(Event)
            allflds = Pair{Symbol,Union{Type,String}}[:stream => Stream]
            meta(target, Event, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Event[]
    end
end
function Base.getproperty(obj::Event, name::Symbol)
    if name === :stream
        return (obj.__protobuf_jl_internal_values[name])::Stream
    else
        getfield(obj, name)
    end
end

mutable struct Status <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Status(; kwargs...)
        obj = new(meta(Status), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Status
const __meta_Status = Ref{ProtoMeta}()
function meta(::Type{Status})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Status)
            __meta_Status[] = target = ProtoMeta(Status)
            allflds = Pair{Symbol,Union{Type,String}}[:version => AbstractString, :bytes_read => UInt64, :bytes_written => UInt64, :bytes_read_rate => Float32, :bytes_written_rate => Float32, :rpcs_executed => UInt64, :rpc_rate => Float32, :one_rpc_per_update => Bool, :max_time_per_update => UInt32, :adaptive_rate_control => Bool, :blocking_recv => Bool, :recv_timeout => UInt32, :time_per_rpc_update => Float32, :poll_time_per_rpc_update => Float32, :exec_time_per_rpc_update => Float32, :stream_rpcs => UInt32, :stream_rpcs_executed => UInt64, :stream_rpc_rate => Float32, :time_per_stream_update => Float32]
            meta(target, Status, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Status[]
    end
end
function Base.getproperty(obj::Status, name::Symbol)
    if name === :version
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :bytes_read
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :bytes_written
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :bytes_read_rate
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :bytes_written_rate
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :rpcs_executed
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :rpc_rate
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :one_rpc_per_update
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :max_time_per_update
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :adaptive_rate_control
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :blocking_recv
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :recv_timeout
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :time_per_rpc_update
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :poll_time_per_rpc_update
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :exec_time_per_rpc_update
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :stream_rpcs
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :stream_rpcs_executed
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :stream_rpc_rate
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :time_per_stream_update
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct MultiplexedRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MultiplexedRequest(; kwargs...)
        obj = new(meta(MultiplexedRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct MultiplexedRequest
const __meta_MultiplexedRequest = Ref{ProtoMeta}()
function meta(::Type{MultiplexedRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MultiplexedRequest)
            __meta_MultiplexedRequest[] = target = ProtoMeta(MultiplexedRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:connection_request => ConnectionRequest, :request => Request]
            meta(target, MultiplexedRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MultiplexedRequest[]
    end
end
function Base.getproperty(obj::MultiplexedRequest, name::Symbol)
    if name === :connection_request
        return (obj.__protobuf_jl_internal_values[name])::ConnectionRequest
    elseif name === :request
        return (obj.__protobuf_jl_internal_values[name])::Request
    else
        getfield(obj, name)
    end
end

mutable struct MultiplexedResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MultiplexedResponse(; kwargs...)
        obj = new(meta(MultiplexedResponse), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            fldtype = symdict[fldname].jtyp
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct MultiplexedResponse
const __meta_MultiplexedResponse = Ref{ProtoMeta}()
function meta(::Type{MultiplexedResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MultiplexedResponse)
            __meta_MultiplexedResponse[] = target = ProtoMeta(MultiplexedResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:response => Response, :stream_update => StreamUpdate]
            meta(target, MultiplexedResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MultiplexedResponse[]
    end
end
function Base.getproperty(obj::MultiplexedResponse, name::Symbol)
    if name === :response
        return (obj.__protobuf_jl_internal_values[name])::Response
    elseif name === :stream_update
        return (obj.__protobuf_jl_internal_values[name])::StreamUpdate
    else
        getfield(obj, name)
    end
end

export ConnectionRequest_Type, ConnectionRequest, ConnectionResponse_Status, ConnectionResponse, Request, ProcedureCall, Argument, Response, ProcedureResult, Error, StreamUpdate, StreamResult, Services, Service, Procedure_GameScene, Procedure, Parameter, Class, Enumeration, EnumerationValue, Exception, Type_TypeCode, _Type, Tuple, List, _Set, Dictionary, DictionaryEntry, Stream, Event, Status, MultiplexedRequest, MultiplexedResponse
