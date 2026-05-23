
let with_berries = [
    'culturaldelights:rice_ball',
    'minecraft:melon_slice',
    'minecraft:sweet_berries',
    'minecraft:glow_berries',
    'create:chocolate_glazed_berries',
    'the_vault:vault_sweets',
    'the_vault:vault_small_sweets_block',
    'the_vault:vault_sweets_block',
    'minestuck:red_cake',
    'delightful:salmonberries',
    'delightful:berry_matcha_latte',
    'delightful:jelly_bottle',
    'delightful:glow_jelly_bottle',
    'farmersdelight:melon_juice',
    'farmersdelight:sweet_berry_cheesecake',
    'farmersdelight:sweet_berry_cheesecake_slice',
    'farmersdelight:sweet_berry_cookie',
    'farmersdelight:melon_popsicle',
    'farmersdelight:glow_berry_custard',
    'farmersdelight:fruit_salad',
    'farmersrespite:coffee_berries',
    'ars_nouveau:source_berry',
    'ars_nouveau:source_berry_roll'
]

onEvent("item.tags", event => {
    with_berries.forEach(id => {
        event.add('origins:food_with_berries', `${id}`)
    })
})