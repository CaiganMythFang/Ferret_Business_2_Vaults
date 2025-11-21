
let magic_dusts = [
    'minecraft:redstone', 
    'minecraft:glowstone_dust', 
    'ae2:ender_dust', 
    'thermal:ender_pearl_dust', 
    'minestuck:glowystone_dust'
]

onEvent('item.tooltip', tooltip => {
    magic_dusts.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Magic Dusts'))
    })
  })
})