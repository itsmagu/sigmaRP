DEFINE_BASECLASS("player_default")
local PLAYER = {}
PLAYER.DisplayName = "Human"
PLAYER.RunSpeed = 350
PLAYER.WalkSpeed = 200
PLAYER.SlowWalkSpeed = 110
PLAYER.CrouchedWalkSpeed = 0.8
PLAYER.DuckSpeed = 0.3
PLAYER.UnDuckSpeed = 0.5
PLAYER.JumpPower = 140
PLAYER.CanUseFlashlight = false
PLAYER.StartHealth = 100
PLAYER.MaxHealth = 100
PLAYER.StartArmor = 0
PLAYER.MaxArmor = 0
PLAYER.DropWeaponOnDie = true
PLAYER.TeammateNoCollide = false
PLAYER.AvoidPlayers = true
PLAYER.UseVMHands = true
function PLAYER:Loadout()
    self.Player:RemoveAllAmmo()
    self.Player:GiveAmmo(48, "Pistol", true)
    self.Player:Give("weapon_pistol")
end

function PLAYER:SetModel()
    local modelname = "models/player/leet.mdl"
    util.PrecacheModel(modelname)
    self.Player:SetModel(modelname)
end

player_manager.RegisterClass("player_human", PLAYER, "player_default")