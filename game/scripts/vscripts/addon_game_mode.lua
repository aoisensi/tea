if CTeaGameMode == nil then
	_G.CTeaGameMode = class({})
end

require("events")

function Precache(context)
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )
	]]
end

function Activate()
	GameRules.AddonTemplate = CTeaGameMode()
	GameRules.AddonTemplate:InitGameMode()
end

function CTeaGameMode:InitGameMode()
	print("TEA addon is loaded.")
	GameRules:SetSameHeroSelectionEnabled(true)
	ListenToGameEvent("npc_spawned", Dynamic_Wrap(CTeaGameMode, "OnNPCSpawned"), self)
	PlayerResource:SetCustomTeamAssignment(0, DOTA_TEAM_GOODGUYS)
	PlayerResource:SetCustomTeamAssignment(1, DOTA_TEAM_BADGUYS)
end
