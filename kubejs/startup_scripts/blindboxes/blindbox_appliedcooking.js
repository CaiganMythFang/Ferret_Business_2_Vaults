// appliedcooking Blind Box
// good
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_appliedcooking_good')
		.displayName('Good Blind Box - Motmot Inject')
		.maxStackSize(64)
		.rarity(RARITY_RARE)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_appliedcooking_good', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Good Blind Boxes have either Good or Amazing items!').darkPurple()])
	})
});


