
let advcreature = [
    'minecraft:glow_ink_sac', 
    'minecraft:rabbit_foot',
    'minecraft:turtle_egg'
]

onEvent('item.tooltip', tooltip => {
    advcreature.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Advanced Creature Parts'))
    })
  })
})