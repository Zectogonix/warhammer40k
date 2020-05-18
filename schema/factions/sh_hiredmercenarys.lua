FACTION.name = "Hired Mercenary's"
FACTION.desc = "Individuals hired by the Rogue Trader, who are to fill out their own assigned duties among the ship."
FACTION.color = Color(65, 74, 76)
FACTION.pay = 25
FACTION.payTime = 600
FACTION.health = 100
FACTION.armor = 0
FACTION.isDefault = false
function FACTION:onSpawn(client)
    -- Custom health and armor for players in this faction.
    client:SetHealth(self.health)
    client:SetArmor(self.armor)
end
FACTION_HIREDMERCENARYS = FACTION.index