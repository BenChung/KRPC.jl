import KRPC.Interface.SpaceCenter.RemoteTypes as RemoteTypes

function getJuliaValue(conn, value::Array{UInt8, 1}, rtype::Type{RemoteTypes.Part})
    res = ProtoBuf.read_varint(PipeBuffer(value), Int64)
    if res == 0
        return Nothing()
    else
        return RemoteTypes.Part(conn, res)
    end
end
