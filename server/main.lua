local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-ammunationjob:server:deliveryItem', function(requiredItems)
	if not exports['qb-inventory']:HasItem(source, requiredItems) then
		QBCore.Functions.Notify(source, 'Il vous manque des items', 'error', 7500)
		return
	end
	local Player = QBCore.Functions.GetPlayer(tonumber(source))
	local amount = nil
	for name, removeAmount in pairs(requiredItems) do
		amount = removeAmount
		Player.Functions.RemoveItem(name, removeAmount)
		TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[name], 'remove', removeAmount)
	end
	exports['okokBanking']:AddMoney('ammunation', (math.random(1000, 1300) * amount))
end)