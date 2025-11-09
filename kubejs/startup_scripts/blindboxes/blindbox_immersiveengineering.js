// immersiveengineering Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersiveengineering_cheap')
		.displayName('Cheap Blind Box - Meerkat Trail')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersiveengineering_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// immersiveengineering Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersiveengineering_decent')
		.displayName('Decent Blind Box - Culpeo Crime')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersiveengineering_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// immersiveengineering Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersiveengineering_good')
		.displayName('Good Blind Box - Skunk Drive')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersiveengineering_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// immersiveengineering Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersiveengineering_amazing')
		.displayName('Amazing Blind Box - Fox Fancy')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersiveengineering_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


