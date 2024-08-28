// Blind Box of Blind Boxes
onEvent('item.registry', event => {
    event.create('tfb2:blindboxblindbox')
        .displayName('Blind Box of Blind Boxes')
        .maxStackSize(64)
        .rarity(RARITY_EPIC)
        .group('tfb2')
        .tooltip(text.lightPurple('A Ferret Business Blind Box of Blind Boxes! '))
        .tooltip(text.darkPurple('Right Click me to get yourself a random Blind Box!'))
})