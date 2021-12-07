"""
    kerbal(c::KRPCConnection, call::Request{S, P, R}) where {S, P, R}

Send a single message `call` to the server with connection `c`. See the 
call stubs generated in the KRPC.Interface.[service] module for valid requests.

# Examples

```
active_vessel = kerbal(conn, KRPC.Interface.SpaceCenter.get_ActiveVessel())
```
"""
function kerbal(c::KRPCConnection, call::Request{S, P, R}) where {S, P, R}
	return kerbal(c, (call, ))[1]
end

@generated function make_kerbal_call(call::RT) where {S, P, R, RT<:Request{S, P, R}}
	argument_asts = Any[]
	for (i, arg) in enumerate(fieldnames(RT))
		push!(argument_asts, :(krpc.schema.Argument(position=$(i-1), value=getWireValue(getfield(call, $(QuoteNode(arg)))))))
	end
	return :(krpc.schema.ProcedureCall(service=string(S), procedure=string(P), arguments=[$(argument_asts...)]))
end

process_return(conn, value, call::Request{S, P, Nothing}) where {S, P} = Nothing()
process_return(conn, value, call::Request{S, P, R}) where {S, P, R} = getJuliaValue(conn, value, R)

"""
    kerbal(c::KRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}

Send multiple messages `calls` to the server with connection `c`. See the 
call stubs generated in the KRPC.Interface.[service] module for valid requests.

# Examples

```
active_vessel, gamemode = kerbal(conn, (KRPC.Interface.SpaceCenter.get_ActiveVessel(), KRPC.Interface.SpaceCenter.get_GameMode()))
```
"""
@generated function kerbal(c::KRPCConnection, calls::T) where {K, T<:Tuple{Vararg{RT where {S, P, R, RT<:Request{S, P, R}}, K}}}
	call_asts = [:(make_kerbal_call(calls[$i])) for i=1:K]
	return_asts = [:(process_return(c,res.results[$i].value, calls[$i])) for i=1:K]
    return quote 
    	res = SendBiMessage(c, krpc.schema.Request(calls=[$(call_asts...)]))
    	handle_potential_error(res)
    	return ($(return_asts...), )
    end
end
