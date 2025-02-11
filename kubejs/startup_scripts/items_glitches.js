// Glitched Ingot
onEvent('item.registry', event => {
    event.create('tfb2:glitched_ingot')
        .displayName('Glitched Ingot')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:glitched_ingot', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched resource, useful to The Ferret Business').darkPurple()])
    })
});

// Glitched Gemstone
onEvent('item.registry', event => {
    event.create('tfb2:glitched_gemstone')
        .displayName('Glitched Gemstone')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:glitched_gemstone', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched resource, useful to The Ferret Business').darkPurple()])
    })
});

// Glitched Dust
onEvent('item.registry', event => {
    event.create('tfb2:glitched_dust')
        .displayName('Glitched Dust')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:glitched_dust', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched resource, useful to The Ferret Business').darkPurple()])
    })
});

// Glitched Armor
onEvent('item.registry', event => {
    event.create('tfb2:glitched_armor')
        .displayName('Glitched Armor')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:glitched_armor', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched resource, useful to The Ferret Business').darkPurple()])
    })
});

// Glitched Gemstone
onEvent('item.registry', event => {
    event.create('tfb2:glitched_weapon')
        .displayName('Glitched Weapon')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:glitched_weapon', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched resource, useful to The Ferret Business').darkPurple()])
    })
});