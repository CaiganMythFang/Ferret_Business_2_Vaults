
let honeyed_goods = [
    'minecraft:honeycomb_block', 
    'minecraft:honey_block', 
    'minecraft:honeycomb', 
    'minecraft:honey_bottle', 
    'create:honeyed_apple', 
    'delightful:honey_glazed_walnut', 
    'farmersdelight:honey_cookie', 
    'farmersdelight:honey_glazed_ham_block', 
    'farmersdelight:honey_glazed_ham', 
    'createaddition:honey_cake', 
    'delightful:berry_matcha_latte', 
    'farmersrespite:rose_hip_pie', 
    'delightful:matcha_latte', 
    'supplementaries:candy'
]

onEvent('item.tooltip', tooltip => {
    honeyed_goods.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Honeyed Goods'))
    })
  })
})