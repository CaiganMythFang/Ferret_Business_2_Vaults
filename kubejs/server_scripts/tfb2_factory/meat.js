
let meat = [
    'minecraft:cooked_porkchop',
    'minecraft:cooked_cod',
    'minecraft:cooked_salmon',
    'minecraft:cooked_chicken',
    'minecraft:cooked_rabbit',
    'minecraft:cooked_mutton',
    'quark:cooked_frog_leg',
    'naturalist:cooked_venison',
    'minestuck:irradiated_steak',
    'tropicraft:cooked_ray',
    'tropicraft:cooked_frog_leg',
    'tropicraft:cooked_fish',
    'delightful:cooked_venison_chops',
    'delightful:cooked_goat',
    'farmersdelight:cooked_chicken_cuts',
    'farmersdelight:cooked_bacon',
    'farmersdelight:cooked_cod_slice',
    'farmersdelight:cooked_salmon_slice',
    'farmersdelight:cooked_mutton_chops',
    'delightful:chunk_nugget',
    'minecraft:cooked_beef'
]

onEvent("item.tags", event => {
    meat.forEach(id => {
        event.add('tfb2:cooked_meat', `${id}`)
    })
})