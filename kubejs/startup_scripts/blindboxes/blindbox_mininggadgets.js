// mininggadgets Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_mininggadgets_cheap')
		.displayName('Cheap Blind Box - Gryphon Glare')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_mininggadgets_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// mininggadgets Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_mininggadgets_decent')
		.displayName('Decent Blind Box - Bear Watch')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_mininggadgets_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// mininggadgets Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_mininggadgets_good')
		.displayName('Good Blind Box - Capybara Trot')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_mininggadgets_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});


