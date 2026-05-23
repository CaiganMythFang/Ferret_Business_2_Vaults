// Armor Stands - Clothing Displays

// Astronaut - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - SouthWest
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - SouthWest') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - NorthWest
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - NorthEast
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })

// Astronaut - SouthEast
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_astronaut_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Astronaut - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:astronaut_boots",Count:1},{id:"cosmeticarmoursmod:astronaut_leggings",Count:1},{id:"cosmeticarmoursmod:astronaut_chestplate",Count:1},{id:"cosmeticarmoursmod:astronaut_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Mobster - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Mobster - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Mobster - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Mobster - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Mobster - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Mobster - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[215f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Mobster - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[260f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Mobster - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_mobster_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Mobster - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:mobster_boots",Count:1},{id:"cosmeticarmoursmod:mobster_leggings",Count:1},{id:"cosmeticarmoursmod:mobster_chestplate",Count:1},{id:"cosmeticarmoursmod:mobster_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
  
// Steampunk M - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_m_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk M - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Steampunk F - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_steampunk_f_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Steampunk F - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:steampunkers_attire_f_boots",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_leggings",Count:1},{id:"cosmeticarmoursmod:steampunkers_attire_f_chestplate",Count:1},{id:"cosmeticarmoursmod:steampunkers_tophat_f_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Ghille - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_ghille_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Ghille Suit - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:ghillie_suit_boots",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_leggings",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_chestplate",Count:1},{id:"cosmeticarmoursmod:ghillie_suit_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Empty - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_empty_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Empty - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Placeholder
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_placeholder')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Costume Shop Mannequin - Placeholder') 
       .tagItem('tfb2:mannequin_system')
       .notSolid()
  })
  
// Clothing - Empty - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - North east
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Empty - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_empty_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Empty - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Farmer - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_farmer_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Farmer - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:farmer_attire_boots",Count:1},{id:"cosmeticarmoursmod:farmer_attire_leggings",Count:1},{id:"cosmeticarmoursmod:farmer_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:straw_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Fisher - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_fisher_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fisher - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:fishermans_attire_boots",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_leggings",Count:1},{id:"cosmeticarmoursmod:fishermans_attire_chestplate",Count:1},{id:"cosmeticarmoursmod:fishermans_bucket_hat_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Red skirt - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_red_skirt_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Red Skirt - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:red_plaid_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:red_plaid_skirt_boots",Count:1},{id:"cosmeticarmoursmod:royal_tunic_red_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple skirt - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_skirt_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Skirt - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:purple_skirt_leggings",Count:1},{id:"cosmeticarmoursmod:purple_skirt_boots",Count:1},{id:"cosmeticarmoursmod:purple_skirt_chestplate",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Flower - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_flower_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Flower - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"kacys_cosmetics:purple_flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Purple Bow - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_purple_bow_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Purple Bow - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"kacys_cosmetics:purple_bow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Flower Crown - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_flower_crown_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Flower Crown - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"cosmeticarmoursmod:flower_crown_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - South
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - South West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - North West
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - North
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - North East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Clothing - Poppy - South East
onEvent('block.registry', event => {
  event.create('tfb2:clothing_shop_mannequin_poppy_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Poppy - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"kacys_cosmetics:poppy_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume - Wario Hat - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_yellow_plumber_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Yellow Plumber - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"weavers_cosmetics:coopie_kart_hat_yellow_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - South Wesst
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - Southw') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Axe Head - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_axe_head_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Axe Head - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"kacys_cosmetics:diamond_axe_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Titan Shroud - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_titan_shroud_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Titan Shroud - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"weavers_cosmetics:titans_shroud_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - South
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_s')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - South') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[0f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - South West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_sw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - South West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[45f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_w')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[90f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - North West
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_nw')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - North West') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[135f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - North
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_n')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - North') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[180f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - North East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_ne')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - North East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[225f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_e')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[270f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })
  
// Costume -  Fox Head - South East
onEvent('block.registry', event => {
  event.create('tfb2:costume_shop_mannequin_fox_head_se')
  	   .material('dragon_egg')
       .hardness(200.0)
       .noDrops()
       .displayName('Clothing Shop Mannequin - Fox Head - South East') 
       .tagItem('tfb2:mannequin_system')
       .randomTick(tick => {
           const block = tick.block;
           const position = block.pos;
           let mannequin = tick.level.createEntity('minecraft:armor_stand');
           mannequin.mergeFullNBT('{ShowArms:1b,NoBasePlate:1b,Rotation:[315f],ArmorItems:[{id:"weavers_cosmetics:fox_armour_helmet",Count:1}]}');
           mannequin.x = position.x + 0.5
           mannequin.y = position.y + 0.5
           mannequin.z = position.z + 0.5
           block.level.getBlock(position).set('minecraft:air');
           mannequin.spawn();
       })
       .notSolid()
  })