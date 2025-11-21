
let basicmob = [
    'minecraft:spider_eye', 
    'minecraft:gunpowder', 
    'minecraft:bone', 
    'minecraft:rotten_flesh', 
    'minecraft:shulker_shell'
]

onEvent('item.tooltip', tooltip => {
    basicmob.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Basic Mob Parts'))
    })
  })
})