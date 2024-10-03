Config = {}
Config.Locale = 'fr'
Config.Debug = false

Config.blips = {
    Ammunation = {
        coords = vector3(21.40, -1107.64, 29.80),
        sprite = 313,
        scale = 0.8,
        color = 0
    }
}

Config.duty = {
    ammunation = {
        coords = vector4(23.86, -1096.46, 28.80, 155.67),
        pedModel = 's_m_y_ammucity_01',
    }
}

Config.stash = {
    ammunation = {
        {
            coords = vector3(26.78, -1090.37, 29.68),
            length = 1.9,
            width = 1.95,
            heading = 340,
            minZ = 29,
            maxZ = 31,
        },
        {
            coords = vector3(24.44, -1094.93, 29.48),
            length = 1,
            width = 2.5,
            heading = 70,
            minZ = 29,
            maxZ = 31,
        },
    },
}

Config.clothingRoomsZones = {
    ammunation = {
        {
            coords = vector3(24.85, -1102.60, 29.80),
            length = 0.55,
            width = 3.8,
            heading = 250,
            minZ = 28.80,
            maxZ = 30.80,
        },
    },
}

Config.clothingRoomsOutfit = {
    ['ammunation'] = {
        [0] = {
            outfitLabel = 'Travail',
            male = {
                outfitData = {
                    ['t-shirt'] = {item = 162, texture = 1, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 91, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                    ['shoes'] = {item = 100, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 62, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                }
            },
            female = {
                outfitData = {
                    ['t-shirt'] = {item = 162, texture = 1, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 31, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 48, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 91, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Pants
                    ['shoes'] = {item = 100, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 62, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                }
            },
        },
    }
}

Config.bossMenu = {
    ammunation = {
        {
            coords = vector3(4.75, -1109.55, 29.20),
            length = 1,
            width = 2,
            heading = 160,
            minZ = 28.20,
            maxZ = 30.20,
        },
    },
}

Config.radialMenu = {
    ["ammunation"] = {
        {
            id = "entreprise",
            title = "Entreprise",
            icon = "shop",
            items = {
                {
                    id = 'openStore',
                    title = 'Ouvrire',
                    icon = 'door-open',
                    type = 'client',
                    event = 'togolo_lib:client:showAdvancedNotification',
                    params = {
                        global = true,
                        message = 'Votre ammurie est désormer ouverte !',
                        sender = 'Armurie',
                        subject = 'Ouvert',
                        textureDict = 'CHAR_AMMUNATION',
                        iconType = 2,
                        color = 18,
                    },
                    shouldClose = true
                },
                {
                    id = 'closeStore',
                    title = 'Fermer',
                    icon = 'door-closed',
                    type = 'client',
                    event = 'togolo_lib:client:showAdvancedNotification',
                    params = {
                        global = true,
                        message = 'Votre ammurie est désormer fermer !',
                        sender = 'Armurie',
                        subject = 'Fermer',
                        textureDict = 'CHAR_AMMUNATION',
                        iconType = 2,
                        color = 6,
                    },
                    shouldClose = true
                },
            },
        },
        {
            id = "job",
            title = "Job",
            icon = "screwdriver-wrench",
            items = {
                {
                    id = 'giveTheoryWeapon',
                    title = 'Donner licence',
                    icon = 'truck-pickup',
                    type = 'client',
                    event = 'qb-ammunationjob:client:license',
                    shouldClose = true
                },
            }
        }
    }
}