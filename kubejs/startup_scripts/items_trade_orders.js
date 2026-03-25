// Trade Order - Cheap
onEvent('item.registry', event => {
    event.create('tfb2:trade_order_cheap')
        .displayName('Sealed Trade Order - Cheap')
        .maxStackSize(16)
        .rarity(RARITY_COMMON)
        .group('tfb2')
});

// Trade Order - Decent
onEvent('item.registry', event => {
    event.create('tfb2:trade_order_decent')
        .displayName('Sealed Trade Order - Decent')
        .maxStackSize(16)
        .rarity(RARITY_UNCOMMON)
        .group('tfb2')
});

// Trade Order - Good
onEvent('item.registry', event => {
    event.create('tfb2:trade_order_good')
        .displayName('Sealed Trade Order - Good')
        .maxStackSize(16)
        .rarity(RARITY_RARE)
        .group('tfb2')
});

// Trade Order - Amazing
onEvent('item.registry', event => {
    event.create('tfb2:trade_order_amazing')
        .displayName('Sealed Trade Order - Amazing')
        .maxStackSize(16)
        .rarity(RARITY_EPIC)
        .group('tfb2')
});