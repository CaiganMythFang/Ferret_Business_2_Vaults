
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

onEvent("item.tags", event => {
    living_coral.forEach(id => {
        event.add('tfb2:living_coral', `${id}`)
    })
})