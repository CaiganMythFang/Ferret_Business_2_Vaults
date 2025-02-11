// Glitched Ingot
onEvent('item.registry', event => {
    event.create('tfb2:shipping_crate_empty')
        .displayName('Empty Shipping Crate')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:shipping_crate_empty', (item, advanced, text) => {
    text.add(1, [Text.of('An empty shipping crate, ready for items.').green()])
    })
});

// Glitched Gemstone
onEvent('item.registry', event => {
    event.create('tfb2:shipping_crate_pouch')
        .displayName('Shipping Crate - Pouch')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:shipping_crate_pouch', (item, advanced, text) => {
    text.add(1, [Text.of('A shipping crate containing a single Pouch.').green()])
    })
});