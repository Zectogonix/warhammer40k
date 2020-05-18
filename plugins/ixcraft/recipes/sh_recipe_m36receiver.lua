RECIPE.name = "M36 Kantrael Pattern Lasgun Receiver"
RECIPE.description = "The Recipe for a M36 Kantrael Pattern Lasgun Receiver."
RECIPE.model = "models/props_lab/box01a.mdl"
RECIPE.category = "Weapon Parts"
RECIPE.requirements = {
    ["titanium"] = 4,
    ["boxofscrews"] = 2
}
RECIPE.results = {
	["m36kantraelpatternlasgunreciever"] = 1
}
RECIPE.tools = {
	"gunsmithingtools"
}
RECIPE.flag = "P"

RECIPE:PostHook("OnCanCraft", function(client)
	for _, v in pairs(ents.FindByClass("ix_station_gunsmithworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a gunsmithing workbench."
end)