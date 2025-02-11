onEvent("recipes", event => {
    event.custom({
        "type": "botanypots:crop",
        "seed": {
            "item": "mysticalagriculture:chromatic_iron_seeds"
        },
        "categories": [
            "supremium"
        ],
        "growthTicks": 1800,
        "display": {
            "type": "botanypots:aging",
            "block": "mysticalagriculture:iron_crop"
        },
        "drops": [
            {
                "chance": 1.00,
                "output": {
                    "item": "mysticalagriculture:chromatic_iron_essence"
                }
            }
        ]
    })

    event.custom({
        "type": "botanypotstiers:crop",
        "seed": {
            "item": "mysticalagriculture:chromatic_iron_seeds"
        },
        "categories": [
            "supremium"
        ],
        "growthTicks": 1800,
        "display": {
            "type": "botanypotstiers:aging",
            "block": "mysticalagriculture:iron_crop"
        },
        "drops": [
            {
                "chance": 1.00,
                "output": {
                    "item": "mysticalagriculture:chromatic_iron_essence"
                }
            }
        ]
    })
})






