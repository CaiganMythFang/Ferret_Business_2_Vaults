
let magic_dusts = [
    'minecraft:redstone', 
    'minecraft:glowstone_dust', 
    'ae2:ender_dust', 
    'thermal:ender_pearl_dust', 
    'minestuck:glowystone_dust'
]

onEvent("item.tags", event => {
    magic_dusts.forEach(id => {
        event.add('tfb2:magic_dusts', `${id}`)
    })
})