local MAJOR_VERSION = "LibDogTag-Stats-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Revision: 1 $"):match("%d+")) or 0

if MINOR_VERSION > _G.DogTag_Stats_MINOR_VERSION then
	_G.DogTag_Stats_MINOR_VERSION = MINOR_VERSION
end

DogTag_Stats_funcs[#DogTag_Stats_funcs+1] = function(DogTag_Stats, DogTag)

local L = DogTag_Stats.L


DogTag:AddTag("Stats", "SpellDamage", {
	code = function(school)
		if not school then
			return min(
				GetSpellBonusDamage(2),
				GetSpellBonusDamage(3),
				GetSpellBonusDamage(4),
				GetSpellBonusDamage(5),
				GetSpellBonusDamage(6),
				GetSpellBonusDamage(7)
			)
		else
			return GetSpellBonusDamage(school)
		end
	end,
	arg = {
		'school', 'number;undef', 'nil'
	},
	ret = "number",
	events = "PLAYER_DAMAGE_DONE_MODS;SPELL_POWER_CHANGED",
	doc = L["Returns your bonus spell damage amount."],
	example = '[SpellDamage] => "8476"',
	category = L["Spell"],
})
DogTag:AddTag("Stats", "SpellHealing", {
	code = GetSpellBonusHealing,
	ret = "number",
	events = "PLAYER_DAMAGE_DONE_MODS;SPELL_POWER_CHANGED",
	doc = L["Returns your bonus spell healing amount."],
	example = '[SpellHealing] => "8476"',
	category = L["Spell"],
})
DogTag:AddTag("Stats", "SpellCrit", {
	code = function(school)
		if not school then
			return min(
				GetSpellBonusDamage(2),
				GetSpellBonusDamage(3),
				GetSpellBonusDamage(4),
				GetSpellBonusDamage(5),
				GetSpellBonusDamage(6),
				GetSpellBonusDamage(7)
			)
		else
			return GetSpellBonusDamage(school)
		end
	end,
	arg = {
		'school', 'number;undef', 'nil'
	},
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your spell crit chance."],
	example = '[SpellCrit:Round(1)] => "41.8"',
	category = L["Spell"],
})

DogTag:AddTag("Stats", "SpellHaste", {
	code = function()
		return UnitSpellHaste("player")
	end,
	ret = "number",
	events = "COMBAT_RATING_UPDATE;UNIT_SPELL_HASTE#player",
	doc = L["Returns your spell haste percentage."],
	example = '[SpellHaste:Round(1)] => "28.1"',
	category = L["Spell"],
})


end