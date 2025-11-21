
let high_gem = [
    'minecraft:emerald', 
    'minecraft:diamond', 
    'tropicraft:zirconium_gem', 
    'thermal:cinnabar'
]

onEvent('item.tooltip', tooltip => {
    low_gem.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : High Gem'))
    })
  })
})