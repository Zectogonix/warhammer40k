RECIPE.name = "Talon Mark III Short Autopistol"
RECIPE.description = "The Recipe for a Kantrael MG 'Defender' Pattern Service Pistol."
RECIPE.model = "models/weapons/w_autopistol.mdl"
RECIPE.category = "Autoguns"
RECIPE.requirements = {
	["talonmarkiiishortautopistolreciever"] = 1,
	["autogunpistolgrip"] = 1,
	["autogunpistolbarrel"] = 1
}
RECIPE.results = {
	["autopistol"] = 1
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