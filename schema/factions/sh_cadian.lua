FACTION.name = "242nd Cadian Infantry Regiment"
FACTION.desc = "Cadians believe that discipline is the single most important factor in the operation of any army."
FACTION.color = Color(34, 139, 34)
FACTION.pay = 25
FACTION.payTime = 600
FACTION.health = 100
FACTION.armor = 0
FACTION.isDefault = false
function FACTION:onSpawn(client)
    -- Custom health and armor for players in this faction.
    client:SetHealth(self.health)
end
FACTION_CADIAN = FACTION.index