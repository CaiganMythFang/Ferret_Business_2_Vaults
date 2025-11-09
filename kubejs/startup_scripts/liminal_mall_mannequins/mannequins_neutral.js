// Mannequins - Neutral Pose

// East - Active
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_east')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (East)') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('mannequins:mannequin');
           mannequin.mergeFullNBT('{Pose:{}, Rotation:[-90.0f,0.0f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_east', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// East - Placeholder
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_east_placeholder')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (East) Placeholder') 
       .tagItem('tfb2:mannequin_system')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_east_placeholder', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// West - Active
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_west')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (West)') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('mannequins:mannequin');
           mannequin.mergeFullNBT('{Pose:{}, Rotation:[90.0f,0.0f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_west', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// West - Placeholder
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_west_placeholder')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (West) Placeholder') 
       .tagItem('tfb2:mannequin_system')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_west_placeholder', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// North - Active
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_north')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (North)') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('mannequins:mannequin');
           mannequin.mergeFullNBT('{Pose:{}, Rotation:[-180.0f,0.0f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_north', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// North - Placeholder
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_north_placeholder')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (North) Placeholder') 
       .tagItem('tfb2:mannequin_system')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_north_placeholder', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// South - Active
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_south')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (South)') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('mannequins:mannequin');
           mannequin.mergeFullNBT('{Pose:{}, Rotation:[0.0f,0.0f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_south', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});

// South - Placeholder
onEvent('block.registry', event => {
  event.create('tfb2:mannequin_neutral_south_placeholder')
  	   .material('dragon_egg')
       .hardness(0.5)
       .displayName('Mannequin - Neutral (South) Placeholder') 
       .tagItem('tfb2:mannequin_system')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:mannequin_neutral_south_placeholder', (item, advanced, text) => {
    text.add(1, [Text.of('A').obfuscated(), Text.of('MANNEQUIN').lightPurple(), Text.of('A').obfuscated()])
    text.add(2, [Text.of('You should not have this, please report how you obtained it.').darkPurple()])
    })
});