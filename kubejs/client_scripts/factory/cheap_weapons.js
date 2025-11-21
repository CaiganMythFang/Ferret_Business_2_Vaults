
let cheap_weapons = [
    'minecraft:golden_sword', 
    'minecraft:golden_axe', 
    'minecraft:iron_sword', 
    'minecraft:iron_axe', 
    'ae2:certus_quartz_axe', 
    'ae2:certus_quartz_sword', 
    'minecraft:trident', 
    'ae2:nether_quartz_axe', 
    'ae2:nether_quartz_sword', 
    'ae2:fluix_axe', 
    'ae2:fluix_sword', 
    'delightful:copper_knife', 
    'delightful:silver_knife', 
    'delightful:tin_knife', 
    'delightful:steel_knife', 
    'delightful:brass_knife', 
    'delightful:bronze_knife', 
    'delightful:constantan_knife', 
    'delightful:electrum_knife', 
    'delightful:invar_knife', 
    'delightful:lead_knife', 
    'delightful:nickel_knife', 
    'farmersdelight:iron_knife', 
    'farmersdelight:diamond_knife', 
    'farmersdelight:golden_knife', 
    'the_vault:sword',
    'the_vault:axe',
    'the_vault:battlestaff',
    'the_vault:trident'
]

onEvent('item.tooltip', tooltip => {
    cheap_weapons.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Cheap Weapons'))
    })
  })
})