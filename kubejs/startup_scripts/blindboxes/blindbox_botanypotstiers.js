// botanypotstiers Blind Box
// amazing
onEvent('item.registry', event => {
	event.create('tfb2:blindbox_botanypotstiers_amazing')
		.displayName('Amazing Blind Box - Capybara Slip')
		.maxStackSize(64)
		.rarity(RARITY_EPIC)
		.group('tfb2')
});

onEvent('item.tooltip', tooltip => {
	tooltip.addAdvanced('tfb2:blindbox_botanypotstiers_amazing', (item, advanced, text) => {
		text.add(1, [Text.of('A Ferret Business Blind Box! Right Click it to see what you get!').lightPurple()])
		text.add(2, [Text.of('Amazing Blind Boxes have only Amazing items!').darkPurple()])
	})
});


