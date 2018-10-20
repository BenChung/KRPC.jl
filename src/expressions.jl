#=

=#
macro RExpr(body)

end

function generate_expr(arg::Int64)
	return :(kRPC.Remote.KRPC.ConstantInt($(convert(Int32, arg)))
end

function generate_expr(arg::Float64)
	return :(kRPC.Remote.KRPC.ConstantDouble($arg))
end

function generate_expr(arg::Float32)
	return :(kRPC.Remote.KRPC.ConstantFloat($arg))
end

function generate_expr(arg::Bool)
	return :(kRPC.Remote.KRPC.ConstantBool($arg))
end

function generate_expr(arg::String)
	return :(kRPC.Remote.KRPC.ConstantString($arg))
end

function generate_expr()