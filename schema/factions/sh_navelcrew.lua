FACTION.name = "Naval Crew"
FACTION.desc = "Selected individuals appointed by the Rogue Trader responsible for the maintance and upkeep of the fleet."
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
FACTION_NAVALCREW = FACTION.index