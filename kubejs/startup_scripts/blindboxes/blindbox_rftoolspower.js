// rftoolspower Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_rftoolspower_cheap')
		.displayName('Cheap Blind Box - Chinchilla Centered')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_rftoolspower_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// rftoolspower Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_rftoolspower_decent')
		.displayName('Decent Blind Box - Rat Kick')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_rftoolspower_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// rftoolspower Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_rftoolspower_good')
		.displayName('Good Blind Box - Alpaca Link')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_rftoolspower_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// rftoolspower Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_rftoolspower_amazing')
		.displayName('Amazing Blind Box - Rabbit Kick')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_rftoolspower_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


