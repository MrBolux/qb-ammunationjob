Config.Shops = {
    ['showcase'] = vector4(26.81, -1093.75, 29.80, 163.71)
}

RegisterNetEvent('qb-ammunation:client:showcaseWeapon', function(data)
    
    -- Charge le modèle de l'arme
    local weaponModel = GetHashKey("weapon_assaultrifle_mk2")
    RequestWeaponAsset(weaponModel) -- Demande le modèle de l'arme
    while not HasWeaponAssetLoaded(weaponModel) do
        Wait(1)
    end
    QBCore.Debug('WeaponLoaded')


    local modelHash = GetHashKey('w_at_ar_supp_02')
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
      Wait(0)
    end
    
    local coords = vector4(26.81, -1093.75, 29.80, 180) -- Coordonnées où placer l'arme
    local weaponObject = CreateWeaponObject(weaponModel, 0, coords.x, coords.y, coords.z, true, 1.0, 0, true, true) -- Crée l'objet arme

    QBCore.Debug(GetWeaponObjectTintIndex(weaponObject))
    SetWeaponObjectTintIndex(weaponObject, 2)
    QBCore.Debug(GetWeaponObjectTintIndex(weaponObject))
    -- -- Attache le silencieux à l'arme
    local success = GiveWeaponComponentToWeaponObject(weaponObject, GetHashKey('COMPONENT_AT_AR_SUPP_02'))
    if success then
        print("Silencieux ajouté à l'arme avec succès.")
    else
        print("Erreur lors de l'ajout du silencieux à l'arme.")
    end

    Wait(5000) -- Attend 5 secondes

    DeleteObject(weaponObject) -- Supprime l'objet arme

    -- Libère le modèle de l'arme maintenant qu'elle est créée
    RemoveWeaponAsset(model)
    SetModelAsNoLongerNeeded(modelHash)


end)

RegisterCommand('weaponView', function (source, args, raw)
    TriggerEvent('qb-ammunation:client:showcaseWeapon')
end)