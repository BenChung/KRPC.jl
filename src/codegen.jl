# code generation routines
module Codegen
using ..kRPC.krpc.schema
using ..kRPC
using ProtoBuf

abstract type ProcedureType end
type Standard <: ProcedureType
    name::String
end
type ServiceGetter <: ProcedureType
    name::String
end
type ServiceSetter <: ProcedureType
    name::String
end
type ClassGetter <: ProcedureType
    clss::String
    name::String
end
type ClassSetter <: ProcedureType
    clss::String
    name::String
end
type StaticMember <: ProcedureType
    clss::String
    name::String
end
type Member <: ProcedureType
    clss::String
    name::String
end

function sanitizeName(kName::Symbol)
    if kName == :String
        return :kString
    elseif kName == :Bool
        return :kBool
    end
    return kName
end

function makeparam(kName::String)
    kName = Symbol(kName)
    if kName == :type
        return :ktype
    elseif kName == :begin
        return :kbegin
    elseif kName == :end
        return :kend
    elseif kName == :function
        return :kfunction
    end
    return kName
end

type SymbolContext
    current::Symbol # the service we're currently in
    needed::Base.Set{Symbol} # services required to be imported by the current service
    neededEnums::Base.Set{Tuple{Symbol, Symbol}} # service/enum combinations needed
end

function kRPCToJuliaType(kType::_Type,ctx::SymbolContext,delayed::Bool)
    kcode = kType.code
    types = kType.types
    if kcode == Type_TypeCode.NONE # ?
        return Void
    elseif kcode == Type_TypeCode.DOUBLE return :Float64
    elseif kcode == Type_TypeCode.FLOAT return :Float32
    elseif kcode == Type_TypeCode.SINT32 return :Int32
    elseif kcode == Type_TypeCode.SINT64 return :Int64
    elseif kcode == Type_TypeCode.UINT32 return :UInt32
    elseif kcode == Type_TypeCode.UINT64 return :UInt64
    elseif kcode == Type_TypeCode.BOOL return :Bool
    elseif kcode == Type_TypeCode.STRING return :String
    elseif kcode == Type_TypeCode.BYTES return :(Array{UInt8, 1})
    elseif kcode == Type_TypeCode.CLASS
        sname = Symbol(kType.service)
        cname = sanitizeName(Symbol(kType.name))
        if sname == ctx.current && !delayed
            return cname
        end
        push!(ctx.needed, sname)
        return :($sname.$cname)
    elseif kcode == Type_TypeCode.ENUMERATION
        sname = Symbol(kType.service)
        emname = Symbol("Enum_" * kType.name)
        ename = Symbol("E"*kType.name)
        push!(ctx.neededEnums, (sname, emname))
        if sname == ctx.current
            return :($emname.$ename)
        end
        push!(ctx.needed, sname)
        return :($sname.$emname.$ename)
    elseif kcode == Type_TypeCode.EVENT
        return :kEvent
    elseif kcode == Type_TypeCode.PROCEDURE_CALL
        return :(kRPC.krpc.schema.ProcedureCall)
    elseif kcode == Type_TypeCode.STREAM
        return :kStream
    elseif kcode == Type_TypeCode.STATUS
        return :(Service)
    elseif kcode == Type_TypeCode.SERVICES
        return :(Services)
    elseif kcode == Type_TypeCode.TUPLE
        return quote Tuple{$(map(x-> kRPCToJuliaType(x,ctx,delayed), types)...)} end
    elseif kcode == Type_TypeCode.LIST
        return quote Array{$(kRPCToJuliaType(types[1],ctx,delayed)),1} end
    elseif kcode == Type_TypeCode.SET
        return quote Base.Set{$(kRPCToJuliaType(types[1],ctx,delayed))} end
    elseif kcode == Type_TypeCode.DICTIONARY
        kty = kRPCToJuliaType(types[1],ctx,delayed)
        vty = kRPCToJuliaType(types[2],ctx,delayed)
        return quote Dict{$kty, $vty} end
    end
end


function getArgument(idx::Int, arg)
    return Argument(position=idx, value=arg)
end


function generateRemoteCallGenerator(service::AbstractString, proc::Procedure, jlArgs, rtype::Union{Symbol, Expr, Void})
    return :(ProcedureCall(service=$service, procedure=$(proc.name), arguments=$jlArgs))
end

function generateRemoteCall(service::AbstractString, proc::Procedure, jlArgs, rtype::Union{Symbol, Expr, Void})
    postamble = Array{Expr,1}()
    if typeof(rtype) != Void
        push!(postamble, quote return kRPC.getJuliaValue(result.results[1].value,$rtype) end)
    end
    return Expr(:block,
        Expr(:line,1,Symbol(service * ":" * proc.name)),
        quote request = [$(generateRemoteCallGenerator(service, proc, jlArgs, rtype))] end,
        #quote println(request) end,
        quote result = kRPC.SendBiMessage(kRPC.Remote.conn, Request(calls=request)) end,
        quote kRPC.handle_potential_error(result) end,
        postamble...)
end

function generateRemoteCallDelayed(service::AbstractString, proc::Procedure, jlArgs, rtype::Union{Symbol, Expr, Void}, darg)
    return quote
        return kRPC.kPC($(generateRemoteCallGenerator(service, proc, jlArgs, rtype)), $rtype)
    end
end

twopartTypeR = r"^([^_]+)_([^_]+)$"
threepartTypeR = r"^([^_]+)_([^_]+)_([^_]+)$"

function parseKind(name::String) :: ProcedureType
    if ismatch(twopartTypeR, name)
        captures = match(twopartTypeR, name).captures
        if captures[1] == "get"
            return ServiceGetter(captures[2])
        elseif captures[1] == "set"
            return ServiceSetter(captures[2])
        else
            return Member(captures[1], captures[2])
        end
    elseif ismatch(threepartTypeR, name)
        captures = match(threepartTypeR, name).captures
        if captures[2] == "static"
            return StaticMember(captures[1], captures[3])
        elseif captures[2] == "get"
            return ClassGetter(captures[1], captures[3])
        elseif captures[2] == "set"
            return ClassSetter(captures[1], captures[3])
        else
            throw("Unexpected method name $name encountered")
        end
    else
        return Standard(name)
    end
end

function makeParameter(i::Int, param)
    if length(param.default_value) > 0
        quote
            if !isa($(Symbol(param.name)), Void)
                push!(args, Argument(position=$(i-1), value=kRPC.getWireValue($(makeparam(param.name)))))
            end
        end
    else
        quote
            push!(args, Argument(position=$(i-1), value=kRPC.getWireValue($(makeparam(param.name)))))
        end
    end
end

function generateProcedureCall(service::String, proc::Procedure, ctx::SymbolContext)
    kind = parseKind(proc.name)
    if isa(kind, Standard) || isa(kind, ServiceGetter) || isa(kind, ClassGetter) || isa(kind, StaticMember) || isa(kind, Member) 
        name = kind.name
    elseif isa(kind, ServiceSetter) || isa(kind, ClassSetter)
        name = kind.name * "!"
    end
    name = sanitizeName(Symbol(name))


    exprargs = Any[ :($(makeparam(param.name)) :: $(kRPCToJuliaType(param._type,ctx,false))) for param in filter(p -> length(p.default_value) == 0, proc.parameters)]
    dexprargs = Any[ :($(makeparam(param.name)) :: $(kRPCToJuliaType(param._type,ctx,true))) for param in filter(p -> length(p.default_value) == 0, proc.parameters)]

    optargs = Any[ Expr(:kw,Expr(:(::),makeparam(param.name),:(Union{Void,$(kRPCToJuliaType(param._type,ctx,false))})),Void()) for param in filter(p -> length(p.default_value) > 0, proc.parameters)]
    doptargs = Any[ Expr(:kw,Expr(:(::),makeparam(param.name),:(Union{Void,$(kRPCToJuliaType(param._type,ctx,true))})),Void()) for param in filter(p -> length(p.default_value) > 0, proc.parameters)]
    if length(optargs) > 0
        unshift!(exprargs, Expr(:parameters, optargs...))
        unshift!(dexprargs, Expr(:parameters, doptargs...))
    end

    if ProtoBuf.has_field(proc, :return_type)
        retty = kRPCToJuliaType(proc.return_type,ctx,false)
        if proc.return_is_nullable 
            retty = :(Nullable{$retty})
        end
    else
        retty = Void()
    end

    headargs = copy(exprargs)
    dheadargs = copy(dexprargs)
    fnhead = Expr(:call, unshift!(headargs, name) ...)
    fnheadd = Expr(:call, unshift!(dheadargs, name) ...)
    paramgen = quote
        args = Array{kRPC.krpc.schema.Argument,1}();
        $([makeParameter(i, proc.parameters[i]) for i=1:length(proc.parameters)]...);
        args
    end
    fnexpr = :($(Expr(:function, fnhead, generateRemoteCall(service, proc, paramgen, retty))); @doc $(proc.documentation) $(fnhead))
    fndexpr = Expr(:function, fnheadd, 
        generateRemoteCallDelayed(service, proc, paramgen, retty, :context))
    return (:($fnexpr; export $name), :($fndexpr; export $name))
end

function makeService(name::String, body::Array{Expr,1}, delayed::Array{Expr, 1})
    return quote
        module $(Symbol(name)) 
            println($(name))
            $(body...) 
            module Delayed
                $(delayed...)
            end
        end; 
        #@doc $(service.documentation) $(Symbol(name))
    end
end



function collapse_modules(expr)
    if !(expr isa Expr) return [expr] end
    if expr.head == :block
        return collect(Iterators.flatten(map(collapse_modules, expr.args)))
    elseif expr.head == :module
        internal = collapse_modules(expr.args[3])
        return [Expr(:module, expr.args[1], expr.args[2], Expr(:block, internal...))]
    end
    return [expr]
end

function generateHelpers(info::Services,conn::kRPC.kRPCConnection)
    addons = Array{Expr,1}()
    services = Dict{String, Array{Expr, 1}}()
    dservices = Dict{String, Array{Expr, 1}}()
    for service in info.services
        services[service.name] = Array{Expr,1}()
        dservices[service.name] = Array{Expr,1}()
        push!(services[service.name], :(using kRPC; using kRPC.krpc.schema; using ..Remote))
        push!(dservices[service.name], :(using kRPC; using kRPC.krpc.schema; using ..Remote))
    end
    for service in info.services
        for cls in service.classes
            clsname = sanitizeName(Symbol(cls.name))
            push!(services[service.name], :(type $clsname <: kRPC.kRPCTypes.Class handle::Base.UInt64 end; 
                                            @doc $(cls.documentation) $clsname;
                                            export $clsname))
        end
        for enu in service.enumerations
            enumarr = Array{Expr,1}()
            enum_mod_name = Symbol("Enum_" * enu.name)
            enum_name = Symbol("E" * enu.name)
            push!(enumarr,:(abstract type $enum_name <: kRPC.kRPCTypes.Enum end; export $enum_name))
            for val in enu.values
                val_name,val_value = (Symbol(val.name), val.value)

                push!(enumarr,:(type $val_name <: $enum_name end; export $val_name))
                push!(addons,:(function getEnumVal(::$(Symbol(service.name)).$enum_mod_name.$val_name) return $val_value end))
            end
            push!(services[service.name],quote module $enum_mod_name using ..kRPC; $(enumarr...) end end)
        end
        symbolContext = SymbolContext(Symbol(service.name), Base.Set{Symbol}(), Base.Set{Tuple{Symbol, Symbol}}())
        for proc in service.procedures
            sproc,dproc = generateProcedureCall(service.name, proc, symbolContext)
            push!(services[service.name], sproc)
            push!(dservices[service.name], dproc)
        end
        for needed in symbolContext.needed
            unshift!(services[service.name], Expr(:using, :(.), :(.), needed))
            unshift!(dservices[service.name], Expr(:using, :(.), :(.), :(.), needed))
        end
        for needed in symbolContext.neededEnums
            unshift!(dservices[service.name], Expr(:import, :(.), :(.), needed[2]))
        end
        unshift!(dservices[service.name], Expr(:using, :(.), :(.), Symbol(service.name)))
    end


    opexpr = Array{Expr,1}()
    push!(opexpr, makeService("SpaceCenter", services["SpaceCenter"], dservices["SpaceCenter"]))
    append!(opexpr, [if first(p) == "SpaceCenter" 
            :(begin end) 
        else 
            makeService(first(p), p[2], dservices[first(p)]) 
        end for p in services])
    #println(opexpr)
    expr = :(module Remote
                using ..kRPC
                function change_connection(iconn::kRPCConnection)
                    global conn = iconn
                end
                $(opexpr...) 
                $(addons...)
            end)
    return collapse_modules(expr)[1]
end
end
