FACTION.name = "Staff"
FACTION.desc = "A [Z.E.C.T] Warhammer 40k: Rogue Trader Staff Member."
FACTION.color = Color(128, 0, 128)
FACTION.pay = 0
FACTION.payTime = 600
FACTION.health = 100
FACTION.armor = 0
FACTION.isDefault = false
function FACTION:onSpawn(client)
    -- Custom health and armor for players in this faction.
    client:SetHealth(self.health)
end
FACTION_CADIAN = FACTION.index