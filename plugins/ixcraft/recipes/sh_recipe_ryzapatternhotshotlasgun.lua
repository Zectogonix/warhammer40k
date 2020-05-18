RECIPE.name = "Ryza Pattern Hot-shot Lasgun"
RECIPE.description = "The Recipe for a Ryza Pattern Hot-shot Lasgun."
RECIPE.model = "models/weapons/w_hellgun.mdl"
RECIPE.category = "Lasguns"
RECIPE.requirements = {
	["ryzapatternhotshotlasgunreciever"] = 1,
	["laspistolgrip"] = 1,
	["laspistolbarrel"] = 1,
	["refinedfocusingcrystal"] = 2
}
RECIPE.results = {
	["hellgun"] = 1
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