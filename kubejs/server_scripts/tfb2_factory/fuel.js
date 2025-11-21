
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

onEvent("item.tags", event => {
    fuel.forEach(id => {
        event.add('tfb2:fuel', `${id}`)
    })
})