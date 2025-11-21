
let living_coral = [
    'minecraft:tube_coral', 
    'minecraft:brain_coral', 
    'minecraft:bubble_coral', 
    'minecraft:fire_coral', 
    'minecraft:horn_coral', 
    'minecraft:tube_coral_fan', 
    'minecraft:brain_coral_fan', 
    'minecraft:bubble_coral_fan', 
    'minecraft:fire_coral_fan', 
    'minecraft:horn_coral_fan'
]

onEvent('item.tooltip', tooltip => {
    living_coral.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Living Coral'))
    })
  })
})