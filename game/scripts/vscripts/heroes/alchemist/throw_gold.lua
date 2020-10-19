function OnProjectileHitUnit(keys)
	local ability = keys.ability
	local target = keys.target
	local gold = ability:GetLevelSpecialValueFor("gold", (ability:GetLevel() - 1))
	target:ModifyGold(gold, true, 0)
end