ITEM.name = "242nd Cadian Guardsman Flak Armor"
ITEM.desc = "Armor deployed by Cadian 242nd Guardsman"
ITEM.model = "models/props_c17/BriefCase001a.mdl"
ITEM.price = 500
ITEM.armor = 300
ITEM.width = 2
ITEM.height = 2
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.65, -- Bullets
			0.5, -- Slash
			0.4, -- Shock
			0.8, -- Burn
			1.0, -- Radiation
			1.0, -- Acid
			0.7, -- Explosion
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
	["Headgear"] = 5,
	["Body"] = 0,
}