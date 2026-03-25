// Glitched block placeholder
onEvent('item.registry', event => {
  event.create('tfb2:hqm_glitched')
       .displayName('Any Glitched Block') 
       .maxStackSize(64)
       .rarity(RARITY_COMMON)
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:hqm_glitched', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched block, useful to The Ferret Business').darkPurple()])
    })
});

// Glitched block placeholder
onEvent('item.registry', event => {
  event.create('tfb2:hqm_glitched_item')
       .displayName('Any Glitched Item') 
       .maxStackSize(64)
       .rarity(RARITY_COMMON)
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:hqm_glitched_item', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('Glitched').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('A glitched item, useful to The Ferret Business').darkPurple()])
    })
});