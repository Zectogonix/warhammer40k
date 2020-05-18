RECIPE.name = "Vox-Legi Combat Shotgun"
RECIPE.description = "The Recipe for a Vox-Legi Combat Shotgun."
RECIPE.model = "models/weapons/w_ig_shotgun.mdl"
RECIPE.category = "Shotguns"
RECIPE.requirements = {
	["voxlegicombatshotgunreciever"] = 1,
	["shotgunbarrel"] = 1,
	["shotgunstock"] = 1,
	["shotgunpistolgrip"] = 1
}
RECIPE.results = {
	["shotgun"] = 1
}
RECIPE.tools = {
	"gunsmithingtools"
}
RECIPE.flag = "S"

RECIPE:PostHook("OnCanCraft", function(client)
	for _, v in pairs(ents.FindByClass("ix_station_gunsmithworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a gunsmithing workbench."
end)