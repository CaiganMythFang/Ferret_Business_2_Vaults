
let expensive_armor = [
    'minecraft:diamond_helmet', 
    'minecraft:diamond_chestplate', 
    'minecraft:diamond_leggings', 
    'minecraft:diamond_boots', 
    'minecraft:netherite_helmet', 
    'minecraft:netherite_chestplate', 
    'minecraft:netherite_leggings', 
    'minecraft:netherite_boots', 
    'minecraft:diamond_horse_armor',
    'pneumaticcraft:pneumatic_helmet', 
    'pneumaticcraft:pneumatic_chestplate', 
    'pneumaticcraft:pneumatic_leggings', 
    'pneumaticcraft:pneumatic_boots'
]

onEvent("item.tags", event => {
    expensive_armor.forEach(id => {
        event.add('tfb2:expensive_armor', `${id}`)
    })
})