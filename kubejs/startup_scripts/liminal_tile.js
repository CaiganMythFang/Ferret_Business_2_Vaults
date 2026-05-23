// Liminal Tile
onEvent('block.registry', event => {
  event.create('tfb2:liminal_tile')
  	   .material('dragon_egg')
       .hardness(1.0)
       .displayName('Liminal Tile') 
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:liminal_tile', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Liminal Mall Access').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('Can only be placed between Y level 73 and 80.').darkPurple()])
    })
});

