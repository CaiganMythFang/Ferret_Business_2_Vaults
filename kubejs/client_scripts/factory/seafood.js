
let seafood = [
    'minecraft:salmon', 
    'minecraft:tropical_fish', 
    'minecraft:pufferfish', 
    'minecraft:cod',
    'crittersandcompanions:koi_fish', 
    'crittersandcompanions:clam', 
    'ecologics:crab_claw',
    'culturaldelights:raw_calamari',
    'culturaldelights:squid',
    'culturaldelights:glow_squid'
]

onEvent('item.tooltip', tooltip => {
    seafood.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Raw Seafood'))
    })
  })
})