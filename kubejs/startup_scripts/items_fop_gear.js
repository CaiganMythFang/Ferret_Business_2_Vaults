// FOP Digitalizer
onEvent('item.registry', event => {
    event.create('tfb2:fop_digitalizer')
        .displayName('FOP Digitalizer')
        .maxStackSize(1)
        .rarity(RARITY_UNCOMMON)
        .group('misc')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:fop_digitalizer', (item, advanced, text) => {
    text.add(1, [Text.of('Combine with any item* to Digitalize for selling!').green()])
    text.add(2, [Text.of('* : Combine with 8 Miniscule** items to Digitalize!').green()])
    text.add(3, [Text.of('** : Dirt, Cobblestone, and other non-useful items excluded.').red()])
    })
});

// FOP Digitized Item
onEvent('item.registry', event => {
    event.create('tfb2:fop_digitalized_item')
        .displayName('FOP Digitalized Item')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('misc')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:fop_digitalized_item', (item, advanced, text) => {
    text.add(1, [Text.of('A Digitalized Item! Automatically sell by combining 9 of them in any Crafting Table!').green()])
    })
});

// FOP Digitized Item
onEvent('item.registry', event => {
    event.create('tfb2:fop_coin_pouch')
        .displayName('Unopened Coin Pouch')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('misc')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:fop_coin_pouch', (item, advanced, text) => {
    text.add(1, [Text.of('A Coin Pouch from the FOP! Right click to open!').green()])
    text.add(2, [Text.of('Most likely to be empty...').darkPurple()])
    })
});