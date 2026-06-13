// Cheap
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_cheap', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('SEALED TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for CHEAP items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Decent
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_decent', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('SEALED TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for DECENT items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Good
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_good', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('SEALED TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for GOOD items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Amazing
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_amazing', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('SEALED TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for AMAZING items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Trade Order, Opened
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('wares:delivery_agreement', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('IN PROGRESS TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('An active Trade Order. Bring the listed item to a [TFB] Delivery Table!').green()])
    text.add(3, [Text.of('If not able to complete, you can reroll by combining').red()])
    text.add(4, [Text.of('2, 4, 6, or 8 In Progress Trading Orders with a Ferret Dollar!').red()])
    })
});

// Trade Order, Completed
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('wares:completed_delivery_agreement', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('COMPLETED TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A completed Trade Order! Craft alone in a ').green()])
    text.add(3, [Text.of('Crafting Table to get an extra, tasty prize!').green()])
    })
});