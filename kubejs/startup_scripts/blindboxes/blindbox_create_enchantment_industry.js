// create_enchantment_industry Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_create_enchantment_industry_cheap')
		.displayName('Cheap Blind Box - Hyena Dance')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_create_enchantment_industry_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// create_enchantment_industry Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_create_enchantment_industry_decent')
		.displayName('Decent Blind Box - Kangaroo Drive')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_create_enchantment_industry_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// create_enchantment_industry Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_create_enchantment_industry_amazing')
		.displayName('Amazing Blind Box - Wolf Crime')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_create_enchantment_industry_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


