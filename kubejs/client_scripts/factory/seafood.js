
let seafood = [
    'minecraft:salmon', 
    'minecraft:tropical_fish', 
    'minecraft:pufferfish', 
    'crittersandcompanions:koi_fish', 
    'crittersandcompanions:clam', 
    'ecologics:crab_claw'
]

onEvent('item.tooltip', tooltip => {
    seafood.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Raw Seafood'))
    })
  })
})