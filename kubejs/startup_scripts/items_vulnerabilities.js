// Vulnerability - Blank Card
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_card')
        .displayName('FOPServer Vulnerability Code Snippet')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_card', (item, advanced, text) => {
    text.add(1, [Text.of('An undiscovered Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('Right Click to determine which vulnerability.').lightPurple()])
    })
});

// Vulnerability - DOS - A
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_dos_a')
        .displayName('Vulnerability - DOS Weakness - A')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_dos_a', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('Healthy fruit covered in chocolate.').lightPurple()])
    text.add(3, [Text.of('A sugar overload either way...').darkPurple()])
    })
});

// Vulnerability - DOS - B
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_dos_b')
        .displayName('Vulnerability - DOS Weakness - B')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_dos_b', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A fancy sprinkle covered frosted donut.').lightPurple()])
    text.add(3, [Text.of('A two hit combo of fats and sugars...').darkPurple()])
    })
});

// Vulnerability - DOS - C
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_dos_c')
        .displayName('Vulnerability - DOS Weakness - C')
        .maxStackSize(1)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_dos_c', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A very large, fruity gummy bear.').lightPurple()])
    text.add(3, [Text.of('Hard to resist, the pure sugar cuteness...').darkPurple()])
    })
});

// Vulnerability - DOS - D
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_dos_d')
        .displayName('Vulnerability - DOS Weakness - D')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_dos_d', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('An oversized piece of candy corn').lightPurple()])
    text.add(3, [Text.of('Pure bliss to some, hatred to others...').darkPurple()])
    })
});

// Vulnerability - HACKING - A
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_hack_a')
        .displayName('Vulnerability - Hacking Opening - A')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_hack_a', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A sharp and glittering kunai').lightPurple()])
    text.add(3, [Text.of('Throw, stab, slice, it is getting in...').darkPurple()])
    })
});

// Vulnerability - HACKING - B
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_hack_b')
        .displayName('Vulnerability - Hacking Opening - B')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_hack_b', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A small, razor sharp shuriken').lightPurple()])
    text.add(3, [Text.of('Thrown so fast, only a shimmer before it hits...').darkPurple()])
    })
});

// Vulnerability - HACKING - C
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_hack_c')
        .displayName('Vulnerability - Hacking Opening - C')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_hack_c', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A heavy baseball bat').lightPurple()])
    text.add(3, [Text.of('Brute force, tried and true...').darkPurple()])
    })
});

// Vulnerability - HACKING - D
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_hack_d')
        .displayName('Vulnerability - Hacking Opening - D')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_hack_d', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A dangerously glowing magic wand').lightPurple()])
    text.add(3, [Text.of('If one magic missile never misses...').darkPurple()])
    })
});

// Vulnerability - Social Engineering - A
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_soceng_a')
        .displayName('Vulnerability - Social Engineering - A')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_soceng_a', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('The strongest energy drink').lightPurple()])
    text.add(3, [Text.of('Sugar and caffine make you jittery...').darkPurple()])
    })
});

// Vulnerability - Social Engineering - B
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_soceng_b')
        .displayName('Vulnerability - Social Engineering - B')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_soceng_b', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('An artistic cup of coffee').lightPurple()])
    text.add(3, [Text.of('Elegant designs and pretentious talks...').darkPurple()])
    })
});

// Vulnerability - Social Engineering - C
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_soceng_c')
        .displayName('Vulnerability - Social Engineering - C')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_soceng_c', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A fancy cosmopolitan').lightPurple()])
    text.add(3, [Text.of('Sweet and tart and alcoholic...').darkPurple()])
    })
});

// Vulnerability - Social Engineering - D
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_soceng_d')
        .displayName('Vulnerability - Social Engineering - D')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_soceng_d', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A lowball of whiskey').lightPurple()])
    text.add(3, [Text.of('Strong and smooth, easy to talk...').darkPurple()])
    })
});

// Vulnerability - Spoofing - A
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_spoofing_a')
        .displayName('Vulnerability - Program Spoofing - A')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_spoofing_a', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A simple, classic mining pick').lightPurple()])
    text.add(3, [Text.of('Common down in the mines, makes perfect openings...').darkPurple()])
    })
});

// Vulnerability - Spoofing - B
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_spoofing_b')
        .displayName('Vulnerability - Program Spoofing - B')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_spoofing_b', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A small set of tools').lightPurple()])
    text.add(3, [Text.of('Good for "fixing" any problem...').darkPurple()])
    })
});

// Vulnerability - Spoofing - C
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_spoofing_c')
        .displayName('Vulnerability - Program Spoofing - C')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_spoofing_c', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A good quality hacksaw').lightPurple()])
    text.add(3, [Text.of('A valid tool, with a lot of uses...').darkPurple()])
    })
});

// Vulnerability - Spoofing - D
onEvent('item.registry', event => {
    event.create('tfb2:vulnerability_spoofing_d')
        .displayName('Vulnerability - Program Spoofing - D')
        .maxStackSize(64)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:vulnerability_spoofing_d', (item, advanced, text) => {
    text.add(1, [Text.of('A Vulnerability in the FOP Game Server.').lightPurple()])
    text.add(2, [Text.of('A rugged farmer sickle').lightPurple()])
    text.add(3, [Text.of('Good for "fixing" any problem...').darkPurple()])
    })
});