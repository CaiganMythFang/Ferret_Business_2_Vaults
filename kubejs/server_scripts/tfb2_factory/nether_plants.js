
let nether_plants = [
    'minecraft:crimson_roots', 
    'minecraft:warped_roots', 
    'minecraft:twisting_vines'
]

onEvent("item.tags", event => {
    nether_plants.forEach(id => {
        event.add('tfb2:nether_plants', `${id}`)
    })
})