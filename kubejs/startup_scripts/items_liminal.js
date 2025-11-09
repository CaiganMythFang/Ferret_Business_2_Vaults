// FOP Digitalizer


// FOP Digitized Item
onEvent('item.registry', event => {
    event.create('tfb2:liminal_coin')
        .displayName('Strange Coin')
        .maxStackSize(64)
        .rarity(RARITY_RARE)
        .group('misc')
});

onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:liminal_coin', (item, advanced, text) => {
    text.add(1, [Text.of('An oddly style coined, stamped with the name of a long dead mall.').darkPurple()])
    text.add(2, [Text.of('Things look...strange, when viewed through the hole of the coin.').darkPurple()])
    })
});