
let advmob = [
    'minecraft:blaze_rod', 
    'minecraft:ender_pearl', 
    'minecraft:ghast_tear', 
    'minecraft:magma_cream', 
    'minecraft:phantom_membrane', 
    'minecraft:wither_skeleton_skull'
]

onEvent("item.tags", event => {
    advmob.forEach(id => {
        event.add('tfb2:advmob', `${id}`)
    })
})