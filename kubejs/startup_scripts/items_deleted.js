// FOP Digitalizer


// FOP Digitized Item
onEvent('item.registry', event => {
    event.create('tfb2:deleted_item')
        .displayName('Deleted Item')
        .maxStackSize(64)
        .rarity(RARITY_RARE)
        .group('misc')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:deleted_item', (item, advanced, text) => {
    text.add(1, [Text.of('How did you find this? This is used in an item recipe to disable it.').darkPurple()])
    })
});