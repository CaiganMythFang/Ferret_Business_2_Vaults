// advancedperipherals Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_advancedperipherals_cheap')
		.displayName('Cheap Blind Box - Jerboa Haunt')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_advancedperipherals_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// advancedperipherals Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_advancedperipherals_decent')
		.displayName('Decent Blind Box - Mouse Scroll')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_advancedperipherals_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// advancedperipherals Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_advancedperipherals_good')
		.displayName('Good Blind Box - Wolf Flop')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_advancedperipherals_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// advancedperipherals Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_advancedperipherals_amazing')
		.displayName('Amazing Blind Box - Civet Build')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_advancedperipherals_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


