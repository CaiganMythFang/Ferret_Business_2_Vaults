
let fuel = [
    'minecraft:coal', 
    'minecraft:charcoal', 
    'immersiveengineering:coal_coke', 
    'pneumaticcraft:gasoline_bucket', 
    'createdieselgenerators:gasoline_bucket', 
    'immersivepetroleum:gasoline_bucket', 
    'immersivepetroleum:gasoline_bottle', 
    'pneumaticcraft:diesel_bucket', 
    'pneumaticcraft:biodiesel_bucket', 
    'createdieselgenerators:biodiesel_bucket', 
    'createdieselgenerators:diesel_bucket', 
    'immersiveengineering:biodiesel_bucket', 
    'immersivepetroleum:diesel_sulfur_bucket', 
    'immersivepetroleum:diesel_bucket', 
    'car:bio_diesel_bucket'

]

onEvent('item.tooltip', tooltip => {
    fuel.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Fuel'))
    })
  })
})