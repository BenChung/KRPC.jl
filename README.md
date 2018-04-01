# kRPC

This is a Julia client library for the [kRPC](https://github.com/krpc/krpc) remote procedure call server mod for Kerbal Space Program. It is released under the MIT license.

Unlike other kRPC clients, kRPC.jl automatically generates the RPC stubs on demand from the description provided from the server, which is part of its initial build process. As a result, Kerbal Space Program and a hosted kRPC server must be running either at initial build, or the first time kRPC.jl is loaded. The automatic stub generation will also be ran if a version conflict is detected between the cached stubs and the server's version. As a result, this library does not need to be manually updated as long as kRPC retains its externally facing interface.

kRPC.jl attempts to map kRPC constructs (e.g. getters, setters, enums) onto equivalent Julia-level constructs. 

* `[RECEIVER].Get[NAME]` becomes `[NAME](::[RECEIVER])`
* `[RECEIVER].Set[NAME]([TYPE])` becomes `[NAME](::[RECEIVER],::[TYPE])`

More information on this mapping will be included in the future. 

Documentation is also automatically included - if not parsed - and loaded into Julia, so in-language documentation lookup works.

