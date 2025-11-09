// integratedcrafting Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedcrafting_decent')
		.displayName('Decent Blind Box - Lizard Trail')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedcrafting_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// integratedcrafting Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedcrafting_good')
		.displayName('Good Blind Box - Kangaroo Generate')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedcrafting_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});


