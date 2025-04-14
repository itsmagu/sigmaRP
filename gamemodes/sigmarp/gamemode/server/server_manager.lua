function GM:PlayerConnect(name, ip)
    PrintMessage(HUD_PRINTCENTER, name .. " is Connecting from " .. ip)
end

function GM:PlayerDisconnected(ply)
    PrintMessage(HUD_PRINTCENTER, ply:Name() .. " has Disconnected")
end