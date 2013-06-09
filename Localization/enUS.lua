local MAJOR_VERSION = "LibDogTag-Stats-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Revision: 1 $"):match("%d+")) or 0

_G.DogTag_Stats_MINOR_VERSION = MINOR_VERSION

_G.DogTag_Stats_funcs = {}

DogTag_Stats_funcs[#DogTag_Stats_funcs+1] = function(DogTag_Stats, DogTag)

DogTag_Stats.L =
{
	["Stats"] = "Stats",
	["Returns your Strength"] = "Returns your Strength",
	["Returns your Agility"] = "Returns your Agility",
	["Returns your Stamina"] = "Returns your Stamina",
	["Returns your Intellect"] = "Returns your Intellect",
	["Returns your Spirit"] = "Returns your Spirit",
	["Returns your Mastery"] = "Returns your Mastery",
	["Melee"] = "Melee",
	["Returns your melee Attack Power"] = "Returns your melee Attack Power",
	["Returns your melee crit chance"] = "Returns your melee crit chance",
	["Returns your melee haste percentage"] = "Returns your melee haste percentage",
	["Returns your melee expertise"] = "Returns your melee expertise",
	["Ranged"] = "Ranged",
	["Returns your ranged attack power"] = "Returns your ranged attack power",
	["Returns your ranged crit chance"] = "Returns your ranged crit chance",
	["Returns your ranged haste percentage"] = "Returns your ranged haste percentage",
	["Returns your ranged expertise"] = "Returns your ranged expertise",
	["Spell"] = "Spell",
	["Returns your bonus spell damage amount."] = "Returns your bonus spell damage amount.",
	["Returns your bonus spell healing amount."] = "Returns your bonus spell healing amount.",
	["Returns your spell crit chance."] = "Returns your spell crit chance.",
	["Returns your spell haste percentage."] = "Returns your spell haste percentage.",
	["Regen"] = "Regen",
	["Returns your out-of-combat mana regen (mana per second)."] = "Returns your out-of-combat mana regen (mana per second).",
	["Returns your in-combat mana regen (mana per second)."] = "Returns your in-combat mana regen (mana per second).",
	["Returns your energy regeneration or focus regeneration rate (per second)."] = "Returns your energy regeneration or focus regeneration rate (per second).",
	["Defense"] = "Defense",
	["Returns your armor value."] = "Returns your armor value.",
	["Returns your percentage of damage reduction from armor. Pass in a level as a parameter to calculate damage reduction against that level enemy."] = "Returns your percentage of damage reduction from armor. Pass in a level as a parameter to calculate damage reduction against that level enemy.",
	["Returns your dodge chance."] = "Returns your dodge chance.",
	["Returns your parry chance."] = "Returns your parry chance.",
	["Returns your block chance."] = "Returns your block chance.",
	["Returns your block amount percentage."] = "Returns your block amount percentage.",
	["PvP"] = "PvP",
	["Returns your resilience rating."] = "Returns your resilience rating.",
	["Returns your damage reduction percentage from resilience."] = "Returns your damage reduction percentage from resilience.",
	["Returns your damage increase percentage from PvP power."] = "Returns your damage increase percentage from PvP power.",
	["Returns your healing increase percentage from PvP power."] = "Returns your healing increase percentage from PvP power.",
	["Returns your damage or healing increase percentage from PvP power (whichever is greater)."] = "Returns your damage or healing increase percentage from PvP power (whichever is greater).",
	["Returns your PvP power rating."] = "Returns your PvP power rating.",

}

for k,v in pairs(DogTag_Stats.L) do
	if type(v) ~= "string" then -- some evil addon messed it up
		DogTag_Stats.L[k] = k
	end
end

setmetatable(DogTag_Stats.L, {__index = function(self, key)
	self[key] = key
	return key
end})

end