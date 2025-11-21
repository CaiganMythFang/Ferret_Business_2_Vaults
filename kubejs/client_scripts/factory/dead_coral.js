
let dead_coral = [
    'minecraft:dead_brain_coral', 
    'minecraft:dead_bubble_coral', 
    'minecraft:dead_fire_coral', 
    'minecraft:dead_horn_coral', 
    'minecraft:dead_tube_coral', 
    'minecraft:dead_tube_coral_fan', 
    'minecraft:dead_brain_coral_fan', 
    'minecraft:dead_bubble_coral_fan', 
    'minecraft:dead_fire_coral_fan', 
    'minecraft:dead_horn_coral_fan'
]

onEvent('item.tooltip', tooltip => {
    dead_coral.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Dead Coral'))
    })
  })
})