
let basiccreature = [
    'minecraft:feather', 
    'minecraft:bone_meal', 
    'minecraft:leather', 
    'minecraft:ink_sac', 
    'minecraft:rabbit_hide', 
    'ecologics:penguin_feather',
    'minecraft:egg'
]

onEvent("item.tags", event => {
    basiccreature.forEach(id => {
        event.add('tfb2:basiccreature', `${id}`)
    })
})