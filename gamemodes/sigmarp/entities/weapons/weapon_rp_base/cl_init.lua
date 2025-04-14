include("shared.lua")

SWEP.Slot				= 0						-- Slot in the weapon selection menu
SWEP.SlotPos			= 10					-- Position in the slot
SWEP.DrawAmmo			= true					-- Should draw the default HL2 ammo counter
SWEP.DrawCrosshair		= true					-- Should draw the default crosshair
SWEP.DrawWeaponInfoBox	= true					-- Should draw the weapon info box
SWEP.BounceWeaponIcon	= true					-- Should the weapon icon bounce?
SWEP.SwayScale			= 1.0					-- The scale of the viewmodel sway
SWEP.BobScale			= 1.0					-- The scale of the viewmodel bob

SWEP.RenderGroup		= RENDERGROUP_OPAQUE

-- Override this in your SWEP to set the icon in the weapon selection
SWEP.WepSelectIcon		= surface.GetTextureID( "weapons/swep" )

-- This is the corner of the speech bubble
SWEP.SpeechBubbleLid	= surface.GetTextureID( "gui/speech_lid" )