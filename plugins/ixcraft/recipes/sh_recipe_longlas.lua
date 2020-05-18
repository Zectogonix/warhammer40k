RECIPE.name = "Long-Las"
RECIPE.description = "The Recipe for a Long-Las Pattern Lasgun."
RECIPE.model = "models/weapons/ig_lasgun.mdl"
RECIPE.category = "Lasguns"
RECIPE.requirements = {
	["longlasreceiver"] = 1,
	["lasriflestock"] = 1,
	["lasriflebarrel"] = 1,
	["focusingcrystal"] = 1,
	["laspistolgrip"] = 1
}
RECIPE.results = {
	["longlas"] = 1
}
RECIPE.tools = {
	"gunsmithingtools"
}
RECIPE.flag = "L"

RECIPE:PostHook("OnCanCraft", function(client)
	for _, v in pairs(ents.FindByClass("ix_station_gunsmithworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a gunsmithing workbench."
end)