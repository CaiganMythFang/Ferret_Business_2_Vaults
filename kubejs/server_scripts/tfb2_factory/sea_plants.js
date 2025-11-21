
let sea_plants = [
    'minecraft:seagrass', 
    'minecraft:kelp', 
    'minecraft:sea_pickle'
]

onEvent("item.tags", event => {
    sea_plants.forEach(id => {
        event.add('tfb2:sea_plants', `${id}`)
    })
})