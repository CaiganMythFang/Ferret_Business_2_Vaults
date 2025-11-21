
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

onEvent('item.tooltip', tooltip => {
    expensive_weapons.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Expensive Weapons'))
    })
  })
})