Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
    -- ['trucker'] = { ['label'] = 'Trucker', ['isManaged'] = false },
    -- ['taxi'] = { ['label'] = 'Taxi', ['isManaged'] = false },
    -- ['tow'] = { ['label'] = 'Tow Truck', ['isManaged'] = false },
    -- ['reporter'] = { ['label'] = 'News Reporter', ['isManaged'] = false },
    -- ['garbage'] = { ['label'] = 'Garbage Collector', ['isManaged'] = false },
    -- ['bus'] = { ['label'] = 'Bus Driver', ['isManaged'] = false },
    -- ['hotdog'] = { ['label'] = 'Hot Dog Stand', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-550.58, -195.06, 38.23),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "City Hall"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card",
                cost = 50,
            },
            ["permit"] = {
                label = 'Permit',
                cost = 25,
                metadata = 'permit',
            },
            ["cdl_license"] = {
                label = 'CDL',
                cost = 75,
                metadata = 'cdl',
            },
            ["bike_license"] = {
                label = 'Bike License',
                cost = 50,
                metadata = 'bike',
            },
            ["driver_license"] = {
                label = "Driver License",
                cost = 50,
                metadata = "driver"
            },
            ["weaponlicense"] = {
                label = "Weapon License",
                cost = 50,
                metadata = "weapon"
            },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(213.26, -1396.55, 30.58),
        showBlip = true,
        blipData = {
            sprite = 380,
            display = 4,
            scale = 0.8,
            colour = 1,
            title = 'Driving School'
        },
        instructors = {
            'DJD56142',
            'DXT09752',
            'SRI85140',
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vector4(-544.10070800781, -198.13798522949, 37.226970672607, 74.569343566895),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    -- {
    --     model = 'a_m_m_eastsa_02',
    --     coords = vec4(240.91, -1379.2, 32.74, 138.96),
    --     scenario = 'WORLD_HUMAN_STAND_MOBILE',
    --     drivingschool = true,
    --     zoneOptions = { -- Used for when UseTarget is false
    --         length = 3.0,
    --         width = 3.0
    --     }
    -- }
}
