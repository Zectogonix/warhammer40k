RECIPE.name = "Hax-Orthlack Creed-9 Pattern Autorifle"
RECIPE.description = "The Recipe for a Hax-Orthlack Creed-9 Pattern Autorifle."
RECIPE.model = "models/weapons/w_autogun_b.mdl"
RECIPE.category = "Autoguns"
RECIPE.requirements = {
	["haxorthlackcreed9patternreciever"] = 1,
	["autogunstock"] = 1,
	["autogunbarrel"] = 1,
	["autogunpistolgrip"] = 1
}
RECIPE.results = {
	["autogun"] = 1
}
RECIPE.tools = {
	"gunsmithingtools"
}
RECIPE.flag = "a"

RECIPE:PostHook("OnCanCraft", function(client)
	for _, v in pairs(ents.FindByClass("ix_station_gunsmithworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a gunsmithing workbench."
end)