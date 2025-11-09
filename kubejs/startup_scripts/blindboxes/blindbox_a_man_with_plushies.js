// a_man_with_plushies Blind Box
// cheap
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_a_man_with_plushies_cheap')
		.displayName('Cheap Blind Box - Chinchilla Golf')
		.maxStackSize(64)
		.rarity(RARITY_COMMON)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_a_man_with_plushies_cheap', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Cheap Blind Boxes have a tiny chance of containing ANY item!').darkPurple()])
	})
});


