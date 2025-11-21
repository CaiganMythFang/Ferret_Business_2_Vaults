
let precious_metals = [
    'minecraft:gold_ingot', 
    'minecraft:netherite_ingot', 
    'thermal:silver_ingot', 
    'mekanism:ingot_uranium', 
    'thermal:electrum_ingot', 
    'moremekanismprocessing:azure_silver_ingot', 
    'moremekanismprocessing:platinum_ingot', 
    'moremekanismprocessing:silver_ingot', 
    'createaddition:electrum_ingot', 
    'immersiveengineering:ingot_silver', 
    'immersiveengineering:ingot_uranium', 
    'immersiveengineering:ingot_electrum'

]

onEvent('item.tooltip', tooltip => {
    precious_metals.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Precious Metals'))
    })
  })
})