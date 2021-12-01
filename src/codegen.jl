mutable struct SymbolContext
    current::Symbol # the service we're currently in
    needed::Base.Set{Symbol} # services required to be imported by the current service
    neededEnums::Base.Set{Tuple{Symbol, Symbol}} # service/enum combinations needed
end

abstract type ProcedureType end
struct Standard <: ProcedureType
    name::String
end
struct ServiceGetter <: ProcedureType
    name::String
end
struct ServiceSetter <: ProcedureType
    name::String
end
struct ClassGetter <: ProcedureType
    clss::String
    name::String
end
struct ClassSetter <: ProcedureType
    clss::String
    name::String
end
struct StaticMember <: ProcedureType
    clss::String
    name::String
end
struct Member <: ProcedureType
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

function kRPCToJuliaType(kType::krpc.schema._Type, ctx::SymbolContext)
    kcode = kType.code
    types = kType.types
    if kcode == krpc.schema.Type_TypeCode.NONE # ?
        return Nothing()
    elseif kcode == krpc.schema.Type_TypeCode.DOUBLE return :Float64
    elseif kcode == krpc.schema.Type_TypeCode.FLOAT return :Float32
    elseif kcode == krpc.schema.Type_TypeCode.SINT32 return :Int32
    elseif kcode == krpc.schema.Type_TypeCode.SINT64 return :Int64
    elseif kcode == krpc.schema.Type_TypeCode.UINT32 return :UInt32
    elseif kcode == krpc.schema.Type_TypeCode.UINT64 return :UInt64
    elseif kcode == krpc.schema.Type_TypeCode.BOOL return :Bool
    elseif kcode == krpc.schema.Type_TypeCode.STRING return :String
    elseif kcode == krpc.schema.Type_TypeCode.BYTES return :(Array{UInt8, 1})
    elseif kcode == krpc.schema.Type_TypeCode.CLASS
        sname = Symbol(kType.service)
        cname = sanitizeName(Symbol(kType.name))
        if sname == ctx.current
            return :(RemoteTypes.$cname)
        end
        push!(ctx.needed, sname)
        return :($sname.RemoteTypes.$cname)
    elseif kcode == krpc.schema.Type_TypeCode.ENUMERATION
        sname = Symbol(kType.service)
        emname = Symbol("Enum_" * kType.name)
        ename = Symbol("E"*kType.name)
        push!(ctx.neededEnums, (sname, ename))
        if sname == ctx.current
            return :($ename)
        end
        push!(ctx.needed, sname)
        return :($sname.$ename)
    elseif kcode == krpc.schema.Type_TypeCode.EVENT
        return :(kRPCTypes.kEvent)
    elseif kcode == krpc.schema.Type_TypeCode.PROCEDURE_CALL
        return :Request
    elseif kcode == krpc.schema.Type_TypeCode.STREAM
        return :(kRPCTypes.kStream)
    elseif kcode == krpc.schema.Type_TypeCode.STATUS
        return :(kRPCTypes.Service)
    elseif kcode == krpc.schema.Type_TypeCode.SERVICES
        return :(kRPCTypes.Services)
    elseif kcode == krpc.schema.Type_TypeCode.TUPLE
        return quote Tuple{$(map(x-> kRPCToJuliaType(x,ctx), types)...)} end
    elseif kcode == krpc.schema.Type_TypeCode.LIST
        return quote Array{$(kRPCToJuliaType(types[1],ctx)),1} end
    elseif kcode == krpc.schema.Type_TypeCode.SET
        return quote Base.Set{$(kRPCToJuliaType(types[1],ctx))} end
    elseif kcode == krpc.schema.Type_TypeCode.DICTIONARY
        kty = kRPCToJuliaType(types[1],ctx)
        vty = kRPCToJuliaType(types[2],ctx)
        return quote Dict{$kty, $vty} end
    end
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

twopartTypeR = r"^([^_]+)_([^_]+)$"
threepartTypeR = r"^([^_]+)_([^_]+)_([^_]+)$"

function parseKind(name::String) :: ProcedureType
    if occursin(twopartTypeR, name)
        captures = match(twopartTypeR, name).captures
        if captures[1] == "get"
            return ServiceGetter(captures[2])
        elseif captures[1] == "set"
            return ServiceSetter(captures[2])
        else
            return Member(captures[1], captures[2])
        end
    elseif occursin(threepartTypeR, name)
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

#=
struct Vessel <: kRPCTypes.Class 
    id::Int
end
struct GetActiveVessel <: Request{:SpaceCenter, :get_ActiveVessel, Vessel} end
=#

function generate_wrapper_method(g::ClassGetter, proc, procname, ctx::SymbolContext)
    getter_name = Symbol(g.name)
    return getter_name, :($getter_name(this::$(kRPCToJuliaType(proc.parameters[1]._type, ctx))) = kerbal(this.conn, $procname(this)))
end
function generate_wrapper_method(g::ClassSetter, proc, procname, ctx::SymbolContext)
    setter_name = Symbol(g.name * "!")
    return setter_name, :($setter_name(this::$(kRPCToJuliaType(proc.parameters[1]._type, ctx)), value::$(kRPCToJuliaType(proc.parameters[2]._type, ctx))) = kerbal(this.conn, $procname(this, value)))
end

function make_param(argname, param, ctx)
    if !isnothing(param.default_value) && length(param.default_value) > 0
        return Expr(:kw, Expr(:(::), argname, kRPCToJuliaType(param._type, ctx)), :(getJuliaValue(this.conn, $(param.default_value), $(kRPCToJuliaType(param._type, ctx)))))
    else
        return :($(argname)::$(kRPCToJuliaType(param._type, ctx)))
    end
end
function generate_wrapper_method(g::Member, proc, procname, ctx::SymbolContext)
    name = Symbol(g.name)
    args = []
    argnames = []
    push!(args, :(this::$(kRPCToJuliaType(proc.parameters[1]._type, ctx))))
    push!(argnames, :this)
    for param in proc.parameters[2:end]
        argname = Symbol(param.name)
        push!(args, make_param(argname, param, ctx))
        push!(argnames, argname)
    end
    return name, :($name($(args...)) = kerbal(this.conn, $procname($(argnames...))))
end
function generate_wrapper_method(g::StaticMember, proc, procname, ctx::SymbolContext)
    mname = Symbol(g.name)
    args = []
    argnames = []
    for param in proc.parameters
        argname = Symbol(param.name)
        push!(args, make_param(argname, param, ctx))
        push!(argnames, argname)
    end
    return mname, :($mname(conn::kRPCConnection, $(args...)) = kerbal(conn, $procname($(argnames...))))
end
function generate_wrapper_method(g::ServiceGetter, proc, procname, ctx::SymbolContext)
    name = Symbol(g.name)
    args = []
    argnames = []
    for param in proc.parameters
        argname = Symbol(param.name)
        push!(args, make_param(argname, param, ctx))
        push!(argnames, argname)
    end
    return name, :($name(this::RemoteTypes.$(ctx.current), $(args...)) = kerbal(this.conn, $procname($(argnames...))))
end
function generate_wrapper_method(g::ServiceSetter, proc, procname, ctx::SymbolContext)
    name = Symbol(g.name * "!")
    args = []
    argnames = []
    for param in proc.parameters
        argname = Symbol(param.name)
        push!(args, make_param(argname, param, ctx))
        push!(argnames, argname)
    end
    return name, :($name(this::RemoteTypes.$(ctx.current), $(args...)) = kerbal(this.conn, $procname($(argnames...))))
end
generate_wrapper_method(g, proc, procname, ctx) = nothing, :()

function generateHelpers(info::krpc.schema.Services)
    services = Dict{String, Any}()
    req = Dict{String, Set{String}}()
    for service in info.services
        service_module_name = Symbol(service.name)
        ctx = SymbolContext(service_module_name, Set{Symbol}(), Set{Tuple{Symbol, Symbol}}())

        classes_ast = []
        classnames = []
        for clazz in service.classes
            classname = sanitizeName(Symbol(clazz.name))
            push!(classes_ast,:(struct $classname <: kRPCTypes.Class conn::kRPCConnection; id::Int end))
            push!(classnames, classname)
        end

        enumerations_ast = []
        enumeration_names = []
        for enum in service.enumerations
            enumName = Symbol("E" * enum.name)
            push!(enumerations_ast, :(struct $enumName <: kRPCTypes.Enum value::Int32 end))
            for val in enum.values
                push!(enumerations_ast, :(const $(Symbol("E" * enum.name * "_" * val.name)) = $enumName($(val.value))))
            end
            push!(enumeration_names, enumName)
        end

        procedures_ast = []
        procedure_names =[]
        helpers_ast = []
        helper_type_map = Dict{Symbol, Symbol}()
        setindex!.((helper_type_map,), classnames, [gensym() for i=1:length(classnames)])
        for proc in service.procedures
            kind = parseKind(proc.name)
            procname = sanitizeName(Symbol(proc.name))

            service_name = QuoteNode(Symbol(service.name))
            procedure_name = QuoteNode(Symbol(proc.name))
            return_type = if hasproperty(proc, :return_type) kRPCToJuliaType(proc.return_type, ctx) else Nothing end
            params = [:($(Symbol(param.name))::$(kRPCToJuliaType(param._type, ctx))) for param in proc.parameters]

            cstr_params = [
                if !isnothing(param.default_value) && length(param.default_value) > 0
                    :($(Symbol(param.name))::$(kRPCToJuliaType(param._type, ctx)) = getJuliaValue(Nothing(), $(param.default_value), $(kRPCToJuliaType(param._type, ctx))))
                else 
                    :($(Symbol(param.name))::$(kRPCToJuliaType(param._type, ctx)))
                end
                for param in proc.parameters]
            cstr_new_args = [Symbol(param.name) for param in proc.parameters]
            cstr = :($procname($(params...)) = new($(cstr_new_args...)))
            proc_ast = :(struct $procname <: Request{$service_name, $procedure_name, $return_type}
                $cstr
                $(params...) end)

            expname, helper = generate_wrapper_method(kind, proc, procname, ctx)
            if !isnothing(expname)
                push!(helpers_ast, :(import ..($procname)))
                push!(helpers_ast, helper)
                push!(helpers_ast, :(export $expname))
            end
            push!(procedures_ast, proc_ast)
            push!(procedure_names, procname)
        end

        body = Expr(:toplevel)
        push!(body.args, :(import ...kRPCTypes))
        push!(body.args, :(import ...Request))
        for req in ctx.needed 
            push!(body.args, :(import ..($(Symbol(req)))))
        end
        push!(classes_ast, :(struct $service_module_name conn::kRPCConnection end))
        push!(body.args, :(module RemoteTypes import ....kRPCTypes; import ....kRPCConnection; $(classes_ast...); $(Expr(:export, classnames...)); export $service_module_name; end))
        append!(body.args, enumerations_ast)
        push!(body.args, Expr(:export, enumeration_names...))
        append!(body.args, procedures_ast)
        push!(body.args, Expr(:export, procedure_names...))
        push!(body.args, :(module Helpers 
            import ....kerbal;
            import ....kRPCConnection;
            import ....Request;
            import ..RemoteTypes; 
            $((:(import ...($(Symbol(req)))) for req in ctx.needed)...);
            $((:(import ...($(enum[1])).($(enum[2]))) for enum in ctx.neededEnums)...); 
            $(helpers_ast...) end))
        ast = :(module $service_module_name $body end)
        services[service.name] = ast
        req[service.name] = Set(String.(ctx.needed))
    end

    services_ast_body = Expr(:toplevel)

    added = Set{String}()
    working = collect(services)
    while !isempty(working)
        for (index, (service, ast)) in enumerate(working)
            if any(req->!(req in added), req[service])
                continue
            end
            push!(services_ast_body.args, ast)
            push!(added, service)
            deleteat!(working, index)
            break
        end
    end
    return :(module Interface $services_ast_body end)
end