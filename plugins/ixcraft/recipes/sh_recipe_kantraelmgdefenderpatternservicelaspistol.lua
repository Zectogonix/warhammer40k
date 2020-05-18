RECIPE.name = "Kantrael MG 'Defender' Pattern Service Laspistol"
RECIPE.description = "The Recipe for a Kantrael MG 'Defender' Pattern Service Pistol."
RECIPE.model = "models/weapons/laspistol.mdl"
RECIPE.category = "Lasguns"
RECIPE.requirements = {
	["kantraelmgdefenderpatternreciever"] = 1,
	["laspistolgrip"] = 1,
	["laspistolbarrel"] = 1,
	["focusingcrystal"] = 1
}
RECIPE.results = {
	["laspistol"] = 1
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