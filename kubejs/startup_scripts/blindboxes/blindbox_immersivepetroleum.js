// immersivepetroleum Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersivepetroleum_cheap')
		.displayName('Cheap Blind Box - Capybara Drive')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersivepetroleum_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// immersivepetroleum Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersivepetroleum_decent')
		.displayName('Decent Blind Box - Fox Steal')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersivepetroleum_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// immersivepetroleum Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersivepetroleum_good')
		.displayName('Good Blind Box - Lizard Slip')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersivepetroleum_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});


