
let grains = [
    'minecraft:wheat', 
    'farmersdelight:rice'
]

onEvent("item.tags", event => {
    grains.forEach(id => {
        event.add('tfb2:grains', `${id}`)
    })
})