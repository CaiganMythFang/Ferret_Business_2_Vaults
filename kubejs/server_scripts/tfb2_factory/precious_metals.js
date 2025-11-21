
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

onEvent("item.tags", event => {
    precious_metals.forEach(id => {
        event.add('tfb2:precious_metals', `${id}`)
    })
})