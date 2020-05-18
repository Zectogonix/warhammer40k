ITEM.name = "242nd Whiteshield Armor Flak Armor"
ITEM.desc = "Armor deployed by Cadian Whiteshields."
ITEM.model = "models/props_c17/BriefCase001a.mdl"
ITEM.price = 400
ITEM.width = 2
ITEM.height = 2
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.8, -- Bullets
			0.86, -- Slash
			0.4, -- Shock
			0.8, -- Burn
			1.0, -- Radiation
			1.0, -- Acid
			0.9, -- Explosion
}

-- This will change a player's skin after changing the model. Keep in mind it starts at 0.
ITEM.newSkin = 1
/*
-- This will change a certain part of the model.
ITEM.replacements = {"group01", "group02"}
*/
-- This will change the player's model completely.
ITEM.replacements = "models/gonzo/40kguardsmanfixed/40kguardsmanfixed.mdl"
/*
-- This will have multiple replacements.
ITEM.replacements = {
	{"male", "female"},
	{"group01", "group02"}
}
*/
ITEM.bodyGroups = {
	["Headgear"] = 3,
}