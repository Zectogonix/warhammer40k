FACTION.name = "Adeptus Mechanicus"
FACTION.desc = "The Adeptus Mechanicus also regard organic flesh as weak and view the removal and replacement of biological tissue with mechanical, bionic parts as sacred."
FACTION.color = Color(67, 75, 77)
FACTION.pay = 25
FACTION.payTime = 600
FACTION.health = 200
FACTION.armor = 200
FACTION.isDefault = false
function FACTION:onSpawn(client)
    -- Custom health and armor for players in this faction.
    client:SetHealth(self.health)
    client:SetArmor(self.armor)
end
FACTION_ADEPTUSMECHANICUS = FACTION.index