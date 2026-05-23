
let with_fish = [
    'culturaldelights:rice_ball',
    'culturaldelights:raw_calamari',
    'culturaldelights:cooked_calamari',
    'culturaldelights:cooked_squid',
    'culturaldelights:glow_squid',
    'culturaldelights:fish_taco',
    'culturaldelights:calamari_roll',
    'culturaldelights:squid',
    'culturaldelights:tropical_roll',
    'culturaldelights:pufferfish_roll',
    'minecraft:cod',
    'minecraft:salmon',
    'minecraft:tropical_fish',
    'minecraft:pufferfish',
    'minecraft:cooked_cod',
    'minecraft:cooked_salmon',
    'ecologics:crab_meat',
    'tropicraft:fresh_marlin',
    'tropicraft:seared_marlin',
    'tropicraft:raw_ray',
    'tropicraft:cooked_ray',
    'tropicraft:sea_urchin_roe',
    'tropicraft:raw_fish',
    'tropicraft:cooked_fish',
    'delightful:crab_rangoon',
    'farmersdelight:salmon_slice',
    'farmersdelight:cooked_salmon_slice',
    'farmersdelight:salmon_roll',
    'farmersdelight:cod_roll',
    'farmersdelight:fish_stew',
    'farmersdelight:baked_cod_stew',
    'farmersdelight:squid_ink_pasta',
    'farmersdelight:grilled_salmon',
    'avaritia:cosmic_meatballs',
    'farmersrespite:black_cod',
    'crittersandcompanions:koi_fish'
]

onEvent("item.tags", event => {
    with_fish.forEach(id => {
        event.add('origins:food_with_fish', `${id}`)
    })
})