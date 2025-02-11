// Adobo
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_adobo')
        .displayName('Vault Dish - Adobo')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
        .food(food => {
            food
                .hunger(10)
                .saturation(3)
                .alwaysEdible()
        })
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_adobo', (item, advanced, text) => {
    text.add(1, [Text.of('Made with scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Powerup Adobo
onEvent('item.registry', event => {
    event.create('tfb2:powerup_adobo')
        .displayName('Vault Powerup - Adobo')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
        .glow(true)
        .food(food => {
            food
                .hunger(10)
                .saturation(3)
                .alwaysEdible()
        })
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:powerup_adobo', (item, advanced, text) => {
    text.add(1, [Text.of('A Vault Dish that has been infused with magic.').lightPurple()])
    text.add(3, [Text.of('Consume before entering a vault!').darkPurple()])
    })
});

// Burrito
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_burrito')
        .displayName('Vault Dish - Burrito')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_burrito', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Chili
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_chili')
        .displayName('Vault Dish - Chili')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_chili', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Chocolate Cheesecake
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_chocolate_cheesecake')
        .displayName('Vault Dish - Chocolate Cheesecake')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_chocolate_cheesecake', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Churro
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_churro')
        .displayName('Vault Dish - Churro')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_churro', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Dango
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_dango')
        .displayName('Vault Dish - Dango')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_dango', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Deep Dish Pizza
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_deep_dish_pizza')
        .displayName('Vault Dish - Deep Dish Pizza')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_deep_dish_pizza', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Fish Curry
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_fish_curry')
        .displayName('Vault Dish - Fish Curry')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_fish_curry', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Fried Mac n Cheese
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_fried_mac_and_cheese')
        .displayName('Vault Dish - Fried Mac n Cheese')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_fried_mac_and_cheese', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Frosted Donut
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_frosted_donut')
        .displayName('Vault Dish - Frosted Donut')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_frosted_donut', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Grilled Cheese
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_grilled_cheese')
        .displayName('Vault Dish - Grilled Cheese')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_grilled_cheese', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Halohalo
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_halohalo')
        .displayName('Vault Dish - HaloHalo')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_halohalo', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Hawaiian Pizza
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_hawaiian_pizza')
        .displayName('Vault Dish - Hawaiian Pizza')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_hawaiian_pizza', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Lasagna
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_lasagna')
        .displayName('Vault Dish - Lasagna')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_lasagna', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Leche flan
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_leche_flan')
        .displayName('Vault Dish - Leche Flan')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_leche_flan', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Lumpia
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_lumpia')
        .displayName('Vault Dish - Lumpia')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_lumpia', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Omurice
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_omurice')
        .displayName('Vault Dish - Omurice')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_omurice', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Onigiri
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_onigiri')
        .displayName('Vault Dish - Onigiri')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_onigiri', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Onion Rings
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_onion_rings')
        .displayName('Vault Dish - Onion Rings')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_onion_rings', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Pepperoni Pizza
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_pepperoni_pizza')
        .displayName('Vault Dish - Pepperoni Pizza')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_pepperoni_pizza', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Puto
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_puto')
        .displayName('Vault Dish - Puto')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_puto', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Ramen
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_ramen')
        .displayName('Vault Dish - Ramen')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_ramen', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Red velvet cake
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_red_velvet_cake')
        .displayName('Vault Dish - Red velvet Cake')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_red_velvet_cake', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Siopao
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_siopao')
        .displayName('Vault Dish - Siopao')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_siopao', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Spam Musubi
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_spam_musubi')
        .displayName('Vault Dish - Spam Musubi')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_spam_musubi', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Tamago Nigiri
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_tamago_nigiri')
        .displayName('Vault Dish - Tamago Nigiri')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_tamago_nigiri', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Tiramisu
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_tiramisu')
        .displayName('Vault Dish - Tiramisu')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_tiramisu', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Tuna Maki
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_tuna_maki')
        .displayName('Vault Dish - Tuna Maki')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_tuna_maki', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Tuna Nigiri
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_tuna_nigiri')
        .displayName('Vault Dish - Tuna Nigiri')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_tuna_nigiri', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});

// Ube Ice Cream
onEvent('item.registry', event => {
    event.create('tfb2:vault_dish_ube_ice_cream')
        .displayName('Vault Dish - Ube Ice Cream')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vault_dish_ube_ice_cream', (item, advanced, text) => {
    text.add(1, [Text.of('A special dish made with').lightPurple()])
    text.add(2, [Text.of('scavenged Vault Ingredients.').lightPurple()])
    text.add(3, [Text.of('Consume or use for Delivery Agreements.').darkPurple()])
    })
});