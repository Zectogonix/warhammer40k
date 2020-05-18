RECIPE.name = "Cadian Lieutenant Armor"
RECIPE.description = "The Recipe for Cadian Lieutenant Armor."
RECIPE.model = "models/props_c17/BriefCase001a.mdl"
RECIPE.category = "Armor"
RECIPE.requirements = {
    ["titanium"] = 2,
    ["polymer"] = 6
}
RECIPE.results = {
	["cadianlietenant"] = 1
}
RECIPE.flag = "a"

RECIPE:PostHook("OnCanCraft", function(client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)