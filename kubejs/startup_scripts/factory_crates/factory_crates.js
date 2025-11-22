// Factory Crates 

// Empty
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_empty')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Empty') 
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_empty', (item, advanced, text) => {
    text.add(1, [Text.of('An empty Factory Crate, ready to be filled!').lightPurple()])
    })
});

// Chair
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_chairs')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Chairs') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_chairs', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing chairs!').lightPurple()])
    })
});

// Wals
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_walls')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Walls') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_walls', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing walls!').lightPurple()])
    })
});

// Concrete
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_concrete')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Concrete') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_concrete', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing concrete!').lightPurple()])
    })
});

// Fences
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_fences')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Fences') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_fences', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing fences!').lightPurple()])
    })
});

// Fences
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_fabric')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Fabric') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_fabric', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing fabric!').lightPurple()])
    })
});

// Glass
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_glass')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Glass') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_glass', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing glass!').lightPurple()])
    })
});

// Terracotta
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_terracotta')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Terracotta') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_terracotta', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing terracotta!').lightPurple()])
    })
});

// Meat
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_meat')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Cooked Meat') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_meat', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing cooked meat!').lightPurple()])
    })
});

// Vegetables
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_vegetables')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Vegetables') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_vegetables', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing vegetables!').lightPurple()])
    })
});

// Seafood
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_seafood')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Seafood') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_seafood', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing raw seafood!').lightPurple()])
    })
});

// Basic Mob
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_basicmob')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Basic Mob Parts') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_basicmob', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing basic mob parts!').lightPurple()])
    })
});

// Adv Mob
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_advmob')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Advanced Mob Parts') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_advmob', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing advanced mob parts!').lightPurple()])
    })
});

// Basic Creature
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_basiccreature')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Basic Creature Parts') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_basiccreature', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing basic creature parts!').lightPurple()])
    })
});

// Advanced Creature
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_advcreature')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Advanced Creature Parts') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_advcreature', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing advanced creature parts!').lightPurple()])
    })
});

// Arrows
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_arrows')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Arrows') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_arrows', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing arrows!').lightPurple()])
    })
});

// Dyes
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_dyes')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Dyes') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_dyes', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing dyes!').lightPurple()])
    })
});

// Seeds
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_seeds')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Seeds') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_seeds', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing seeds!').lightPurple()])
    })
});

// Fruit
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_fruit')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Fruit') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_fruit', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing fruit!').lightPurple()])
    })
});

// Grains
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_grains')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Grains') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_grains', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing grains!').lightPurple()])
    })
});

// Leaves
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_leaves')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Leaves') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_leaves', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing leaves!').lightPurple()])
    })
});

// Sea Plants
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_sea_plants')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Sea Plants') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_sea_plants', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing sea plants!').lightPurple()])
    })
});

// Flowers
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_flowers')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Flowers') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_flowers', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing flowers!').lightPurple()])
    })
});

// Pointed Dripstone
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_pointed_dripstone')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Pointed Dripstone') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_pointed_dripstone', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing pointed dripstone!').lightPurple()])
    })
});

// Base Metals
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_base_metals')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Base Metals') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_base_metals', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing base metals!').lightPurple()])
    })
});

// Precious Metals
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_precious_metals')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Precious Metals') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_precious_metals', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing precious metals!').lightPurple()])
    })
});

// Special Metals
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_special_metals')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Special Metals') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_special_metals', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing special metals!').lightPurple()])
    })
});

// Fuel
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_fuel')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Fuel') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_fuel', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing fuel!').lightPurple()])
    })
});

// Low Gem
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_low_gem')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Low Gem') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_low_gem', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing low value gems!').lightPurple()])
    })
});

// High Gem
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_high_gem')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - High Gem') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_high_gem', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing high value gems!').lightPurple()])
    })
});

// Beans
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_beans')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Beans') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_beans', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing beans!').lightPurple()])
    })
});

// Magic Dusts
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_magic_dusts')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Magic Dusts') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_magic_dusts', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing magic dusts!').lightPurple()])
    })
});

// Obsidian
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_obsidian')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Obsidian') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_obsidian', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing obsidian!').lightPurple()])
    })
});

// Frozen
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_frozen')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Frozen') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_frozen', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing frozen!').lightPurple()])
    })
});

// Prismarine
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_prismarine')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Prismarine') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_prismarine', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing prismarine!').lightPurple()])
    })
});

// Dripstone Block
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_dripstone_block')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Dripstone Block') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_dripstone_block', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing dripstone blocks!').lightPurple()])
    })
});

// Blackstone
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_blackstone')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Blackstone') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_blackstone', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing blackstone!').lightPurple()])
    })
});

// Honeyed Goods
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_honeyed_goods')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Honeyed Goods') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_honeyed_goods', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing honeyed goods!').lightPurple()])
    })
});

// Mushrooms
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_mushrooms')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Mushrooms') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_mushrooms', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing mushrooms!').lightPurple()])
    })
});

// Stone Furniture
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_stone_furniture')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Stone Furniture') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_stone_furniture', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing stone furniture!').lightPurple()])
    })
});

// Fancy Kitchen Furniture
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_fancy_kitchen_furniture')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Fancy Kitchen Furniture') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_fancy_kitchen_furniture', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing fancy kitchen furniture!').lightPurple()])
    })
});

// Beds
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_beds')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Beds') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_beds', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing beds!').lightPurple()])
    })
});

// Windows
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_windows')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Windows') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_windows', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing wndows!').lightPurple()])
    })
});

// End Blocks
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_end_blocks')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - End Blocks') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_end_blocks', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing end blocks!').lightPurple()])
    })
});

// Magma
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_magma')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Magma') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_magma', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing magma!').lightPurple()])
    })
});

// Warts
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_warts')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Warts') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_warts', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing warts!').lightPurple()])
    })
});

// Nether Plants
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_nether_plants')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Nether Plants') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_nether_plants', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing nether plants!').lightPurple()])
    })
});

// Platform Plants
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_platform_plants')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Platform Plants') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_platform_plants', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing platform plants!').lightPurple()])
    })
});

// Sweet Treats
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_sweet_treat')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Sweet Treats') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_sweet_treat', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing sweet treats!').lightPurple()])
    })
});

// Savory Meal
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_savory_meal')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Savory Meal') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_savory_meal', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing savory meals!').lightPurple()])
    })
});

// Savory Meal
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_cheap_armor')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Cheap Armor') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_cheap_armor', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing cheap armor!').lightPurple()])
    })
});

// Expensive Armor
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_expensive_armor')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Expensive Armor') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_expensive_armor', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing expensive armor!').lightPurple()])
    })
});

// Cheap Weapons
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_cheap_weapons')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Cheap Weapons') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_cheap_weapons', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing cheap weapons!').lightPurple()])
    })
});

// Expensive Weapons
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_expensive_weapons')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Expensive Weapons') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_expensive_weapons', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing expensive weapons!').lightPurple()])
    })
});

// Dead Coral
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_dead_coral')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Dead Coral') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_dead_coral', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing dead coral!').lightPurple()])
    })
});

// Living Coral
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_living_coral')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Living Coral') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_living_coral', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing living coral!').lightPurple()])
    })
});

// Plants
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_plants')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Plants') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_plants', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing plants!').lightPurple()])
    })
});

// Crying Obsidian
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_crying_obsidian')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Crying Obsidian') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_crying_obsidian', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing crying obsidian!').lightPurple()])
    })
});

// Music
onEvent('block.registry', event => {
  event.create('tfb2:factory_crate_music')
  	   .material('wood')
       .hardness(0.5)
       .displayName('Factory Crate - Music') 
       .tagItem('tfb2:factory_crates')
       .notSolid()
  })
  
onEvent('item.tooltip', tooltip => {
tooltip.addAdvanced('tfb2:factory_crate_music', (item, advanced, text) => {
    text.add(1, [Text.of('A Factory Crate containing music!').lightPurple()])
    })
});