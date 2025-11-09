// cookingforblockheads Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_cookingforblockheads_cheap')
		.displayName('Cheap Blind Box - Dragon Spooky')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_cookingforblockheads_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// cookingforblockheads Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_cookingforblockheads_decent')
		.displayName('Decent Blind Box - Mink Slide')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_cookingforblockheads_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});


