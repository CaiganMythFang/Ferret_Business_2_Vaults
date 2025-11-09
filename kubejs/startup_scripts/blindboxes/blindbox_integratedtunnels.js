// integratedtunnels Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedtunnels_cheap')
		.displayName('Cheap Blind Box - Kangaroo Watch')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedtunnels_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// integratedtunnels Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedtunnels_decent')
		.displayName('Decent Blind Box - Mandrill Eldritch')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedtunnels_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// integratedtunnels Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_integratedtunnels_good')
		.displayName('Good Blind Box - Otter Patch')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_integratedtunnels_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});


