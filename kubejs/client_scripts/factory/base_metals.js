
let base_metals = [
    'minecraft:iron_ingot', 
    'minecraft:copper_ingot', 
    'create:zinc_ingot', 
    'create:brass_ingot', 
    'mekanism:ingot_bronze', 
    'mekanism:ingot_steel', 
    'mekanism:ingot_tin', 
    'mekanism:ingot_lead', 
    'thermal:tin_ingot', 
    'thermal:lead_ingot', 
    'thermal:nickel_ingot', 
    'thermal:bronze_ingot', 
    'moremekanismprocessing:aluminum_ingot', 
    'davebuildingmod:steel_ingot', 
    'tropicraft:shaka_ingot', 
    'tropicraft:manganese_ingot', 
    'immersiveengineering:ingot_aluminum', 
    'immersiveengineering:ingot_lead', 
    'immersiveengineering:ingot_nickel', 
    'immersiveengineering:ingot_steel'

]

onEvent('item.tooltip', tooltip => {
    base_metals.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Base Metals'))
    })
  })
})