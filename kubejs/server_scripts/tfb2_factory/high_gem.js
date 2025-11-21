
let high_gem = [
    'minecraft:emerald', 
    'minecraft:diamond', 
    'tropicraft:zirconium_gem', 
    'thermal:cinnabar'
]

onEvent("item.tags", event => {
    high_gem.forEach(id => {
        event.add('tfb2:high_gem', `${id}`)
    })
})