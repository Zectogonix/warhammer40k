ITEM.name = "Whiteshield Kit"
ITEM.model = Model("models/weapons/w_package.mdl")
ITEM.description = "A kit for Cadian Whiteshield's consisting of their armor, and a M36 Kantrael Pattern Lasgun."
ITEM.items = {"lasgun", "whiteshield"}

ITEM.functions.Open = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end
	end
}