
let plants = [
    'minecraft:grass',
    'minecraft:fern',
    'minecraft:bamboo',
    'minecraft:hanging_roots',
    'minecraft:tall_grass',
    'minecraft:large_fern',
    'minecraft:vine',
    'minecraft:glow_lichen'
]

onEvent("item.tags", event => {
    plants.forEach(id => {
        event.add('tfb2:plants', `${id}`)
    })
})