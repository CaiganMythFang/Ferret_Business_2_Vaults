
let dyes = [
    'minecraft:white_dye', 
    'minecraft:orange_dye', 
    'minecraft:magenta_dye', 
    'minecraft:light_blue_dye', 
    'minecraft:yellow_dye', 
    'minecraft:lime_dye', 
    'minecraft:pink_dye', 
    'minecraft:gray_dye', 
    'minecraft:light_gray_dye', 
    'minecraft:cyan_dye', 
    'minecraft:purple_dye', 
    'minecraft:blue_dye', 
    'minecraft:brown_dye', 
    'minecraft:green_dye', 
    'minecraft:red_dye', 
    'minecraft:black_dye', 
    'dyenamics:peach_dye', 
    'dyenamics:aquamarine_dye', 
    'dyenamics:fluorescent_dye', 
    'dyenamics:mint_dye', 
    'dyenamics:maroon_dye', 
    'dyenamics:bubblegum_dye', 
    'dyenamics:lavender_dye', 
    'dyenamics:persimmon_dye', 
    'dyenamics:cherenkov_dye', 
    'minestuck:bi_dye'
]

onEvent('item.tooltip', tooltip => {
    dyes.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Dyes'))
    })
  })
})