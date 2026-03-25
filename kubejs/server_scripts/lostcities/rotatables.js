
let rotatables = [
    'vm:vending_machine',
    'decocraft:fruit_cart',
    'decocraft:popcorn_cart',
    'decocraft:taco_cart',
    'decocraft:burger_cart',
    'decocraft:candy_cart',
    'decocraft:hot_dog_cart',
    'decocraft:ramen_cart',
    'decocraft:pretzel_cart',
    'decocraft:ice_cream_cart',
    'mcwroofs:white_attic_roof',
    'decocraft:diner_chair_red',
    'decocraft:diner_chair_cyan',
    'decocraft:diner_table_light_gray',
    'decocraft:diner_chair_blue',
    'decocraft:diner_chair_lime',
    'decocraft:diner_chair_light_gray',
    'decocraft:diner_table_yellow',
    'decocraft:diner_table_light_blue',
    'decocraft:diner_table_purple',
    'decocraft:diner_table_round_purple',
    'decocraft:diner_chair_light_blue',
    'decocraft:diner_chair_yellow',
    'decocraft:diner_chair_magenta',
    'decocraft:diner_table_pink',
    'decocraft:diner_chair_black',
    'decocraft:diner_chair_green',
    'decocraft:diner_chair_pink',
    'decocraft:diner_table_orange',
    'decocraft:diner_table_gray',
    'decocraft:diner_table_magenta',
    'decocraft:diner_table_blue',
    'decocraft:diner_table_black',
    'decocraft:diner_table_lime',
    'decocraft:diner_chair_purple',
    'decocraft:diner_chair_gray',
    'decocraft:diner_table_cyan',
    'decocraft:diner_table_red',
    'decocraft:diner_table_green',
    'decocraft:diner_chair_orange',
    'everycomp:cfm/auxiliaryblocks/gloomy_park_bench',
    'decorative_blocks:dark_oak_seat',
    'luphieclutteredmod:luphie_purple_gumball_machine',
    'luphieclutteredmod:luphie_green_gumball_machine'
]

onEvent("block.tags", event => {
    rotatables.forEach(id => {
        event.add('lostcities:rotatable', `${id}`)
    })
})