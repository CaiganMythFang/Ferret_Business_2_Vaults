
let with_apples = [
    'minecraft:enchanted_golden_apple',
    'minecraft:golden_apple',
    'create:honeyed_apple',
    'minestuck:sulfur_candy_apple',
    'minestuck:candy_apple_faygo',
    'minestuck:apple_juice',
    'minestuck:apple_cake',
    'farmersdelight:apple_cider',
    'farmersdelight:apple_pie',
    'farmersdelight:apple_pie_slice',
    'farmersdelight:fruit_salad',
    'createbb:cyanide'
]

onEvent("item.tags", event => {
    with_apples.forEach(id => {
        event.add('origins:food_with_apples', `${id}`)
    })
})