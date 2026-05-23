
let with_chicken = [
    'culturaldelights:chicken_taco',
    'culturaldelights:chicken_roll',
    'culturaldelights:chicken_roll_slice',
    'minecraft:chicken',
    'minecraft:cooked_chicken',
    'farmersdelight:chicken_sandwich',
    'farmersdelight:dumplings',
    'farmersdelight:chicken_soup',
    'farmersdelight:roast_chicken',
    'farmersrespite:tea_curry',
    'avaritia:cosmic_meatballs'
]

onEvent("item.tags", event => {
    with_chicken.forEach(id => {
        event.add('origins:food_with_chicken', `${id}`)
    })
})