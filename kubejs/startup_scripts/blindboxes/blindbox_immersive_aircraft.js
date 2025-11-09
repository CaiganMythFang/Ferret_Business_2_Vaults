// immersive_aircraft Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersive_aircraft_cheap')
		.displayName('Cheap Blind Box - Badger Love')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersive_aircraft_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});

// immersive_aircraft Blind Box
// decent
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_immersive_aircraft_decent')
		.displayName('Decent Blind Box - Otter Generate')
		.maxStackSize(64)
		.rarity(RARITY_UNCOMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_immersive_aircraft_decent', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Decent Blind Boxes have either Decent or Good items!').darkPurple()])
	})
});


