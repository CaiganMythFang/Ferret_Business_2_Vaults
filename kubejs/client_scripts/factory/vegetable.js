
let vegetable = [
    'minecraft:carrot', 
    'minecraft:potato', 
    'minecraft:beetroot', 
    'farmersdelight:onion', 
    'farmersdelight:cabbage_leaf', 
    'farmersdelight:cabbage', 
    'delightful:green_tea_leaf', 
    'delightful:chopped_clover', 
    'delightful:cactus_flesh'
]

onEvent('item.tooltip', tooltip => {
    vegetable.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Vegetables'))
    })
  })
})