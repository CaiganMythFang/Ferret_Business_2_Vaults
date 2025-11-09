// integratedterminals Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedterminals_cheap')
		.displayName('Cheap Blind Box - Panda Crime')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedterminals_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// integratedterminals Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedterminals_good')
		.displayName('Good Blind Box - Binturong Rip')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedterminals_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// integratedterminals Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedterminals_amazing')
		.displayName('Amazing Blind Box - Rat Trot')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedterminals_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


