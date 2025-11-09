// sophisticatedbackpacks Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_sophisticatedbackpacks_cheap')
		.displayName('Cheap Blind Box - Weasel Climb')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_sophisticatedbackpacks_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// sophisticatedbackpacks Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_sophisticatedbackpacks_decent')
		.displayName('Decent Blind Box - Pangolin Scroll')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_sophisticatedbackpacks_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});

// sophisticatedbackpacks Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_sophisticatedbackpacks_good')
		.displayName('Good Blind Box - Badger Smoke')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_sophisticatedbackpacks_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});

// sophisticatedbackpacks Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_sophisticatedbackpacks_amazing')
		.displayName('Amazing Blind Box - Wolf Bounce')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_sophisticatedbackpacks_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


