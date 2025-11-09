// silence_s_defense_tower Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_silence_s_defense_tower_cheap')
		.displayName('Cheap Blind Box - Binturong Crime')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_silence_s_defense_tower_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// silence_s_defense_tower Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_silence_s_defense_tower_decent')
		.displayName('Decent Blind Box - Raccoon Tortilla')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_silence_s_defense_tower_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// silence_s_defense_tower Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_silence_s_defense_tower_good')
		.displayName('Good Blind Box - Panda Trail')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_silence_s_defense_tower_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// silence_s_defense_tower Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_silence_s_defense_tower_amazing')
		.displayName('Amazing Blind Box - Iguana Watch')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_silence_s_defense_tower_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


