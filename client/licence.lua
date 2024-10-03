RegisterNetEvent('qb-ammunationjob:client:license', function()
    -- local player, distance = QBCore.Functions.GetClosestPlayer()
    -- if player ~= -1 and distance < 2.5 then
    --     local targetPlayerID = GetPlayerServerId(player)

        local player = QBCore.Functions.GetPlayerData()
        local menuLicense = {
            {
                header = 'Licenses attribuable',
                isMenuHeader = true,
            }
        }
        for _, licence in pairs(Config.attributableLicenses) do
            menuLicense[#menuLicense + 1] = {
                header = licence,
                params = {
                    isServer = true,
                    event = "police:server:license",
                    args = {
                        targetPlayerID = player.source,
                        licenseName = licence,
                        status = true
                    }
                }
            }
        end
        exports['qb-menu']:openMenu(menuLicense)




        -- QBCore.Functions.TriggerCallback('qb-ammunationjob:server:playerLicences', function(licences)
        --     if licences then

        --     end
        -- end, targetPlayerID)
    -- else
    --     QBCore.Functions.Notify(Lang:t("error.none_nearby"), "error")
    -- end
end)

