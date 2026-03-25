// Cheap
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_cheap', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for CHEAP items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Decent
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_decent', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for DECENT items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Good
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_good', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for GOOD items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});

// Amazing
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:trade_order_amazing', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('TRADE ORDER').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A sealed trade order for AMAZING items.').green()])
    text.add(3, [Text.of('Use to open it, then bring it to a [TFB] Delivery Table!').green()])
    })
});