// Alchemy Crate - Empty
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_empty')
        .displayName('Empty Alchemy Crate')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_empty', (item, advanced, text) => {
    text.add(1, [Text.of('An empty alchemy crate.').green()])
    text.add(2, [Text.of('Combine with certain items to be able to ')])
    text.add(3, [Text.of('break them down for Grist!')])
    text.add(4, [Text.of('YOU CANNOT RETRIEVE ITEMS IN ALCHEMY CRATES').red()])
    })
});

// Alchemy Crate - Vault Gear
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_vault_gear')
        .displayName('Alchemy Crate - Vault Gear')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_vault_gear', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing Vault Gear.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Card
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_card')
        .displayName('Alchemy Crate - Card')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_card', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Card.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Faceted Focus
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_faceted_focus')
        .displayName('Alchemy Crate - Facted Focus')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_faceted_focus', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Facted Focus.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Inscription
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_inscription')
        .displayName('Alchemy Crate - Inscription')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_inscription', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing an Inscription.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Catalyst
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_catalyst')
        .displayName('Alchemy Crate - Catalyst')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_catalyst', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Catalyst.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Augment
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_augment')
        .displayName('Alchemy Crate - Augment')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_augment', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing an Augment.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Deck
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_deck')
        .displayName('Alchemy Crate - Card Deck')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_deck', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Card Deck.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Trinket
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_trinket')
        .displayName('Alchemy Crate - Trinket')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_trinket', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Trinket.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Jewel
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_jewel')
        .displayName('Alchemy Crate - Jewel')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_jewel', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Jewel.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Deck Core
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_deck_core')
        .displayName('Alchemy Crate - Deck Core')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_deck_core', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Deck Core.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Chiseling Focus
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_chiseling_focus')
        .displayName('Alchemy Crate - Chiseling Focus')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_chiseling_focus', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Chiseling Focus.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});

// Alchemy Crate - Trinket Pouch
onEvent('item.registry', event => {
    event.create('tfb2:alchemy_crate_trinket_pouch')
        .displayName('Alchemy Crate - Trinket Pouch')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:alchemy_crate_trinket_pouch', (item, advanced, text) => {
    text.add(1, [Text.of('An alchemy crate containing a Trinket Pouch.').green()])
    text.add(2, [Text.of('Insert into GristWidget1200 to break down.')])
    })
});