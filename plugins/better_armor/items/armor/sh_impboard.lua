ITEM.name = "Imperial Navy Boarding Armor"
ITEM.desc = "Armor deployed by Imperial Navy Boarding Party Members"
ITEM.model = "models/props_c17/BriefCase001a.mdl"
ITEM.price = 500
ITEM.armor = 300
ITEM.width = 2
ITEM.height = 2
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.65, -- Bullets
			0.65, -- Slash
			1.0, -- Shock
			1.0, -- Burn
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
ITEM.replacements = "models/guardsman55.mdl"
/*
-- This will have multiple replacements.
ITEM.replacements = {
    {"male", "female"},
    {"group01", "group02"}
}
*/