# kRPC

A Julia wrapper library for the [KRPC remote procedure call system for Kerbal Space Program](https://krpc.github.io/krpc/index.html). 

# Example

## Setup:
```julia
using kRPC
using kRPC.Interface.SpaceCenter.Helpers

kRPC.kerbal_connect("test", "127.0.0.1") do
	# use the connection
end
```

## Get the vessel's current position:
```julia
spaceCenter = kRPC.Interface.SpaceCenter.RemoteTypes.SpaceCenter(conn)
vessel = ActiveVessel(spaceCenter)
body_rf = ReferenceFrame(Body(Orbit(vessel)))
println(Position(vessel, body_rf))
```

## Stream the vessel's current position:
```julia
spaceCenter = kRPC.Interface.SpaceCenter.RemoteTypes.SpaceCenter(conn)
vessel = ActiveVessel(spaceCenter)
body_rf = ReferenceFrame(Body(Orbit(vessel)))
add_stream(conn, (kRPC.Interface.SpaceCenter.Vessel_Position(vessel, body_rf), )) do stream
	for (position, ) in stream
		println(position)
	end
end
```