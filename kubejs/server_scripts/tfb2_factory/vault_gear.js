
let vault_gear = [
    'the_vault:battlestaff',
    'the_vault:trident',
    'the_vault:plushie',
    'the_vault:loot_sack',
    'the_vault:rang',
    'the_vault:sword',
    'the_vault:axe',
    'the_vault:helmet',
    'the_vault:chestplate',
    'the_vault:boots',
    'the_vault:leggings',
    'the_vault:shield',
    'the_vault:focus',
    'the_vault:magnet',
    'the_vault:wand'
]

onEvent("item.tags", event => {
    vault_gear.forEach(id => {
        event.add('tfb2:vault_gear', `${id}`)
    })
})