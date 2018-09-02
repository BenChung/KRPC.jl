global kRPCBuild = true
include("../src/kRPC.jl") #load in the library; will load because build initialized
println("Trying to connect to KSP to initalize library; game must be running and kRPC started.")

conn = kRPC.kRPCConnect("kRPC.jl build process")