onEvent('recipes', event => {
    let minecraftGateways = ['axolotl', 'chicken', 'cow', 'glow_squid', 'goat', 'mooshroom', 'pig', 'rabbit', 'salmon', 'sheep', 'squid', 'tropical_fish', 'turtle', 'cod', 'bat', 'pufferfish', 'creeper', 'drowned', 'guardian', 'enderman', 'ghast', 'hoglin', 'husk', 'magma_cube', 'phantom', 'piglin', 'piglin_brute', 'pillager', 'ravager', 'shulker', 'skeleton', 'slime', 'spider', 'stray', 'witch', 'wither_skeleton', 'zoglin', 'zombie', 'zombified_piglin', 'evoker', 'blaze', 'cave_spider']
    
    minecraftGateways.forEach(egg => {
     event.recipes.summoningrituals
        .altar(Item.of(`minecraft:${egg}_spawn_egg`))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .input('5x the_vault:chromatic_iron_ingot')
        .input('2x the_vault:vault_diamond')
        .input('5x the_vault:gem_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .input('5x the_vault:chromatic_steel_ingot')
        .input(`2x minecraft:${egg}_spawn_egg`)
        .input('2x the_vault:gem_pog')
        .input('2x the_vault:perfect_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t3`}))
        .input('1x the_vault:echoing_ingot')
        .input(`2x minecraft:${egg}_spawn_egg`)
        .input('2x the_vault:extraordinary_painite')
      })
      
    let cloudstorageGateways =['bloviator', 'badloon']
    cloudstorageGateways.forEach(egg => {
     event.recipes.summoningrituals
        .altar(Item.of(`cloudstorage:spawn_egg_${egg}`))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .input('5x the_vault:chromatic_iron_ingot')
        .input('2x the_vault:vault_diamond')
        .input('5x the_vault:gem_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .input('5x the_vault:chromatic_steel_ingot')
        .input(`2x cloudstorage:spawn_egg_${egg}`)
        .input('2x the_vault:gem_pog')
        .input('2x the_vault:perfect_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t3`}))
        .input('1x the_vault:echoing_ingot')
        .input(`2x cloudstorage:spawn_egg_${egg}`)
        .input('2x the_vault:extraordinary_painite')
      })
      
    let thermalGateways = ['basalz', 'blizz', 'blitz', ]
    thermalGateways.forEach(egg => {
     event.recipes.summoningrituals
        .altar(Item.of(`thermal:${egg}_spawn_egg`))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .input('5x the_vault:chromatic_iron_ingot')
        .input('2x the_vault:vault_diamond')
        .input('5x the_vault:gem_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .input('5x the_vault:chromatic_steel_ingot')
        .input(`2x thermal:${egg}_spawn_egg`)
        .input('2x the_vault:gem_pog')
        .input('2x the_vault:perfect_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t3`}))
        .input('1x the_vault:echoing_ingot')
        .input(`2x thermal:${egg}_spawn_egg`)
        .input('2x the_vault:extraordinary_painite')
      })
      
    let cageriumGateways = ['iron_golem']
    cageriumGateways.forEach(egg => {
     event.recipes.summoningrituals
        .altar(Item.of(`cagerium:${egg}_spawn_egg`))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .input('5x the_vault:chromatic_iron_ingot')
        .input('2x the_vault:vault_diamond')
        .input('5x the_vault:gem_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .input('5x the_vault:chromatic_steel_ingot')
        .input(`2x cagerium:${egg}_spawn_egg`)
        .input('2x the_vault:gem_pog')
        .input('2x the_vault:perfect_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t3`}))
        .input('1x the_vault:echoing_ingot')
        .input(`2x cagerium:${egg}_spawn_egg`)
        .input('2x the_vault:extraordinary_painite')
      })
      
    let quarkGateways = ['wraith']
    quarkGateways.forEach(egg => {
     event.recipes.summoningrituals
        .altar(Item.of(`quark:${egg}_spawn_egg`))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .input('5x the_vault:chromatic_iron_ingot')
        .input('2x the_vault:vault_diamond')
        .input('5x the_vault:gem_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t1`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .input('5x the_vault:chromatic_steel_ingot')
        .input(`2x quark:${egg}_spawn_egg`)
        .input('2x the_vault:gem_pog')
        .input('2x the_vault:perfect_painite')
        
     event.recipes.summoningrituals
        .altar(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t2`}))
        .itemOutput(Item.of('gateways:gate_pearl', 1, {gateway: `gateways:${egg}_gate_t3`}))
        .input('1x the_vault:echoing_ingot')
        .input(`2x quark:${egg}_spawn_egg`)
        .input('2x the_vault:extraordinary_painite')
      })
        // more code
});