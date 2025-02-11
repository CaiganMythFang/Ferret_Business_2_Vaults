// Minecraft Blind Box - Cheap
onEvent('item.registry', event => {
    event.create('tfb2:blindbox_minecraft_cheap')
        .displayName('Cheap Blind Box - Aardvark Check')
        .maxStackSize(64)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
    tooltip.addAdvanced('tfb2:blindbox_minecraft_cheap', (item, advanced, text) => {
        text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
        text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
    })
});

// Minecraft Blind Box - Decent
onEvent('item.registry', event => {
    event.create('tfb2:blindbox_minecraft_decent')
        .displayName('Decent Blind Box - Jaguar Tape')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:blindbox_minecraft_decent', (item, advanced, text) => {
    text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
    text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
    })
});

// Minecraft Blind Box - Good
onEvent('item.registry', event => {
    event.create('tfb2:blindbox_minecraft_good')
        .displayName('Good Blind Box - Ocelot File')
        .maxStackSize(64)
        .rarity(RARITY_RARE)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:blindbox_minecraft_good', (item, advanced, text) => {
    text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
    text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
    })
});

// Minecraft Blind Box - Amazing
onEvent('item.registry', event => {
    event.create('tfb2:blindbox_minecraft_amazing')
        .displayName('Amazing Blind Box - Fox Wag')
        .maxStackSize(64)
        .rarity(RARITY_EPIC)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:blindbox_minecraft_amazing', (item, advanced, text) => {
    text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
    text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
    })
});