
let advcreature = [
    'minecraft:glow_ink_sac', 
    'minecraft:rabbit_foot',
    'minecraft:turtle_egg'
]

onEvent("item.tags", event => {
    advcreature.forEach(id => {
        event.add('tfb2:advcreature', `${id}`)
    })
})