
Config.limitDelivery = { min = 5, max = 8 }

Config.deliveryBlip = {
    label = 'Livraison',
    sprite = 280,
    scale = 1.0,
    color = 0
}

Config.deliveryPedMission = {
    coords = vector4(4.45, -1104.93, 29.80, 252.75),
    pedModel = 's_m_y_ammucity_01',
    animation = 'WORLD_HUMAN_CLIPBOARD',
    options = {
        {
            type = 'client',
            event = 'qb-ammunationjob:client:stopDelivery',
            icon = 'fas fa-sign-in-alt',
            label = 'Arreter les livraison',
            job = 'ammunation',
        },
        {
            type = 'client',
            event = 'qb-ammunationjob:client:startDelivery',
            icon = 'fas fa-sign-in-alt',
            label = 'Commencer les livraison',
            job = 'ammunation',
        }
    }
}

Config.deliveryPedLocations = {
    vector4(822.09, -2147.40, 28.71, 2.39),
    vector4(858.46, -1038.46, 33.07, 354.99),
    vector4(2579.37, 285.76, 108.61, 275.36),
    vector4(244.46, -41.51, 69.90, 125.40),
    vector4(-661.06, -945.54, 21.71, 178.70),
    vector4(-1316.17, -392.86, 36.57, 78.54),
    vector4(-3179.58, 1093.38, 20.84, 67.21),
    vector4(-1130.53, 2699.86, 18.80, 134.75),
    vector4(1687.21, 3755.23, 34.33, 135.24),
    vector4(-342.64, 6097.96, 31.31, 41.45),
}

Config.deliveryPedModel = {
    's_m_y_ammucity_01',
    's_m_y_armymech_01',
    's_m_m_cntrybar_01',
}

Config.deliveryProductAmount = { min = 1, max = 3 }
Config.deliveryProduct = {
    'pistol_ammo',
    'smg_ammo',
    'rifle_ammo',
    'shotgun_ammo',
    'clip_attachment',
    'drum_attachment',
    'flashlight_attachment',
    'suppressor_attachment',
    'grip_attachment',
    'comp_attachment',
}
