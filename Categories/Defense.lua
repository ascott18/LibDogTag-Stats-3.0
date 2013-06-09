local MAJOR_VERSION = "LibDogTag-Stats-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Revision: 1 $"):match("%d+")) or 0

if MINOR_VERSION > _G.DogTag_Stats_MINOR_VERSION then
	_G.DogTag_Stats_MINOR_VERSION = MINOR_VERSION
end

DogTag_Stats_funcs[#DogTag_Stats_funcs+1] = function(DogTag_Stats, DogTag)

local L = DogTag_Stats.L


DogTag:AddTag("Stats", "ArmorRating", {
	code = function()
		return select(2, UnitArmor("player"))
	end,
	ret = "number",
	events = "UNIT_RESISTANCES#player",
	doc = L["Returns your armor value."],
	example = '[ArmorRating] => "23651"',
	category = L["Defense"],
})

DogTag:AddTag("Stats", "ArmorReduction", {
	code = function(level)
		level = level or UnitLevel("player")
		local base, effectiveArmor = UnitArmor("player");
		return PaperDollFrame_GetArmorReduction(effectiveArmor, level);
	end,
	arg = {
		'level', 'number;undef', "@undef",
	},
	ret = "number",
	events = "UNIT_RESISTANCES#player",
	doc = L["Returns your percentage of damage reduction from armor. Pass in a level as a parameter to calculate damage reduction against that level enemy."],
	example = ('[ArmorReduction:Round(1)] => "35.7"; [ArmorReduction(%d):Round(1)] => "32.1"'):format(GetMaxPlayerLevel() + 3),
	category = L["Defense"],
})

DogTag:AddTag("Stats", "DodgeChance", {
	code = GetDodgeChance,
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your dodge chance."],
	example = '[DodgeChance:Round(1)] => "13.2"',
	category = L["Defense"],
})

DogTag:AddTag("Stats", "ParryChance", {
	code = GetParryChance,
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your parry chance."],
	example = '[ParryChance:Round(1)] => "13.2"',
	category = L["Defense"],
})

DogTag:AddTag("Stats", "BlockChance", {
	code = GetDodgeChance,
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your block chance."],
	example = '[BlockChance:Round(1)] => "13.2"',
	category = L["Defense"],
})

DogTag:AddTag("Stats", "BlockAmount", {
	code = GetShieldBlock,
	ret = "number",
	events = "COMBAT_RATING_UPDATE",
	doc = L["Returns your block amount percentage."],
	example = '[BlockAmount:Round(1)] => "32.2"',
	category = L["Defense"],
})



end