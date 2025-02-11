// Blind Box of Blind Boxes
onEvent('item.registry', event => {
    event.create('tfb2:blindboxblindbox')
        .displayName('Blind Box of Blind Boxes')
        .maxStackSize(64)
        .rarity(RARITY_EPIC)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:blindboxblindbox', (item, advanced, text) => {
    text.add(1, [Text.of('A Ferret Business Blind Box of Blind Boxes!').lightPurple()])
    text.add(2, [Text.of('Right Click me to get yourself a random Blind Box!').darkPurple()])
    })
});