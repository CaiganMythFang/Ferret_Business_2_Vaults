
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

onEvent("item.tags", event => {
    vegetable.forEach(id => {
        event.add('tfb2:vegetable', `${id}`)
    })
})