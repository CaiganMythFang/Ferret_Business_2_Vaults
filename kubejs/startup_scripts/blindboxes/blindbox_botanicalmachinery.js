// botanicalmachinery Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_botanicalmachinery_decent')
		.displayName('Decent Blind Box - Lion Fierce')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_botanicalmachinery_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// botanicalmachinery Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_botanicalmachinery_good')
		.displayName('Good Blind Box - Jerboa Build')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_botanicalmachinery_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// botanicalmachinery Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_botanicalmachinery_amazing')
		.displayName('Amazing Blind Box - Crab Shoot')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_botanicalmachinery_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


