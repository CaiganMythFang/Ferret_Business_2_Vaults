
let expensive_weapons = [
    'minecraft:diamond_sword', 
    'minecraft:diamond_axe', 
    'minecraft:netherite_sword', 
    'minecraft:netherite_axe', 
    'quark:pickarang', 
    'quark:flamerang', 
    'farmersdelight:netherite_knife', 
    'experienceobelisk:cognitive_sword', 
    'experienceobelisk:cognitive_axe'
]

onEvent("item.tags", event => {
    expensive_weapons.forEach(id => {
        event.add('tfb2:expensive_weapons', `${id}`)
    })
})