ITEM.name = "Servitor Implants"
ITEM.desc = "Implants which turn the viticm into a Servitor."
ITEM.model = "models/props_c17/BriefCase001a.mdl"
ITEM.price = 500
ITEM.armor = 50
ITEM.width = 2
ITEM.height = 2
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			1.5, -- Bullets
			1.5, -- Slash
			1.5, -- Shock
			1.5, -- Burn
			1.5, -- Radiation
			1.5, -- Acid
			1.5, -- Explosion
}

-- This will change a player's skin after changing the model. Keep in mind it starts at 0.
ITEM.newSkin = 1
/*
-- This will change a certain part of the model.
ITEM.replacements = {"group01", "group02"}
*/
-- This will change the player's model completely.
ITEM.replacements = "models/muramasa/servitor.mdl"
/*
-- This will have multiple replacements.
ITEM.replacements = {
	{"male", "female"},
	{"group01", "group02"}
}
*/