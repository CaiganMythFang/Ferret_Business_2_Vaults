// easy_piglins Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_easy_piglins_decent')
		.displayName('Decent Blind Box - Ferret Board')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_easy_piglins_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// easy_piglins Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_easy_piglins_good')
		.displayName('Good Blind Box - Hamster Tortilla')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_easy_piglins_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});


