if SERVER then
    AddCSLuaFile("cl_init.lua")
    AddCSLuaFile("shared.lua")
    return
end

include("shared.lua")
print("Hellow Client")