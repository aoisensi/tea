function CTeaGameMode:OnNPCSpawned(event)
	local spawnedUnit = EntIndexToHScript(event.entindex)
	local innateAbilityName = "tea_alchemist_throw_gold"

	if spawnedUnit:IsRealHero() then
		if spawnedUnit:HasAbility(innateAbilityName) then

			spawnedUnit:FindAbilityByName(innateAbilityName):SetLevel(1)
		end
	end
end
