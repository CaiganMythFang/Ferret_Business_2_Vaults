
let stone_furniture = [
    'cfm:stone_desk_cabinet', 
    'cfm:stone_desk', 
    'cfm:stone_table', 
    'cfm:stone_coffee_table', 
    'cfm:stone_bedside_cabinet', 
    'cfm:stone_chair', 
    'cfm:stone_cabinet', 
    'cfm:granite_desk_cabinet', 
    'cfm:granite_desk', 
    'cfm:granite_table', 
    'cfm:granite_coffee_table', 
    'cfm:granite_bedside_cabinet', 
    'cfm:granite_chair', 
    'cfm:granite_cabinet', 
    'cfm:diorite_desk_cabinet', 
    'cfm:diorite_desk', 
    'cfm:diorite_table', 
    'cfm:diorite_coffee_table', 
    'cfm:diorite_bedside_cabinet', 
    'cfm:diorite_chair', 
    'cfm:diorite_cabinet', 
    'cfm:andesite_desk_cabinet', 
    'cfm:andesite_desk', 
    'cfm:andesite_table', 
    'cfm:andesite_coffee_table', 
    'cfm:andesite_bedside_cabinet', 
    'cfm:andesite_chair', 
    'cfm:andesite_cabinet'
]

onEvent("item.tags", event => {
    stone_furniture.forEach(id => {
        event.add('tfb2:stone_furniture', `${id}`)
    })
})