
let basiccreature = [
    'minecraft:feather', 
    'minecraft:bone_meal', 
    'minecraft:leather', 
    'minecraft:ink_sac', 
    'minecraft:rabbit_hide', 
    'ecologics:penguin_feather',
    'minecraft:egg'
]

onEvent('item.tooltip', tooltip => {
    basiccreature.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Basic Creature Parts'))
    })
  })
})