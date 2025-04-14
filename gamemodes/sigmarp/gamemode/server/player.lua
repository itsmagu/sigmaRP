function GM:PlayerSpawn(ply)
    print(ply:Name() .. " has spawned!")
    ply:UnSpectate()
    player_manager.SetPlayerClass(ply, "player_human")
    player_manager.OnPlayerSpawn(ply, false)
    ply:StripWeapons()
    player_manager.RunClass(ply, "Loadout")
    player_manager.RunClass(ply, "SetModel")
    ply:SetupHands()
end

function GM:CanPlayerSuicide(ply)
    -- Players can't console kill themselves
    return false
end

function GM:PlayerTraceAttack(ply, dmginfo, dir, trace)
    -- Drop Weapon when arm is hit
    local plyWeapon = ply:GetActiveWeapon()
    if trace["HitGroup"] == 5 and plyWeapon != NULL then
        ply:SetActiveWeapon(NULL)
        ply:DropWeapon(plyWeapon,nil,nil)
    end
end