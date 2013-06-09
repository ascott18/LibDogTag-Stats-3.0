local MAJOR_VERSION = "LibDogTag-Stats-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Revision: 3 $"):match("%d+")) or 0

if MINOR_VERSION > _G.DogTag_Stats_MINOR_VERSION then
	_G.DogTag_Stats_MINOR_VERSION = MINOR_VERSION
end

DogTag_Stats_funcs[#DogTag_Stats_funcs+1] = function(DogTag_Stats, DogTag)

local L = DogTag_Stats.L


DogTag:AddTag("Stats", "MeleeAP", {
	code = function()
		local base, pos, neg = UnitAttackPower("player")
		return base + pos + neg
	end,
	ret = "number",
	events = "UNIT_ATTACK_POWER#player",
	doc = L["Returns your melee Attack Power"],
	example = '[MeleeAP] => "21345"',
	category = L["Melee"],
})

DogTag:AddTag("Stats", "MeleeCrit", {
	code = GetCritChance,
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your melee crit chance"],
	example = '[MeleeCrit:Round(1)] => "23.4"',
	category = L["Melee"],
})

DogTag:AddTag("Stats", "MeleeHaste", {
	code = GetMeleeHaste,
	ret = "number",
	events = "UNIT_ATTACK_SPEED#player",
	doc = L["Returns your melee haste percentage"],
	example = '[MeleeHaste:Round(1)] => "32.7"',
	category = L["Melee"],
})

DogTag:AddTag("Stats", "MeleeExpertise", {
	code = GetExpertise,
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your melee expertise"],
	example = '[MeleeExpertise] => "5.25"',
	category = L["Melee"],
})


end