
let warts = [
    'minecraft:nether_wart_block', 
    'minecraft:warped_wart_block', 
    'quark:nether_wart_sack', 
    'chipped:nether_wart_block_1', 
    'chipped:nether_wart_block_2', 
    'chipped:nether_wart_block_3', 
    'chipped:nether_wart_block_4', 
    'chipped:nether_wart_block_5', 
    'chipped:nether_wart_block_6', 
    'chipped:nether_wart_block_7', 
    'chipped:nether_wart_block_8', 
    'chipped:nether_wart_block_9', 
    'chipped:nether_wart_block_10', 
    'chipped:nether_wart_block_11', 
    'chipped:nether_wart_block_12', 
    'chipped:nether_wart_block_13', 
    'chipped:nether_wart_block_14', 
    'chipped:warped_wart_block_1', 
    'chipped:warped_wart_block_2', 
    'chipped:warped_wart_block_3', 
    'chipped:warped_wart_block_4', 
    'chipped:warped_wart_block_5', 
    'chipped:warped_wart_block_6', 
    'chipped:warped_wart_block_7', 
    'chipped:warped_wart_block_8', 
    'chipped:warped_wart_block_9', 
    'chipped:warped_wart_block_10', 
    'chipped:warped_wart_block_11', 
    'chipped:warped_wart_block_11', 
    'chipped:warped_wart_block_12', 
    'chipped:warped_wart_block_13', 
    'chipped:warped_wart_block_14', 
    'minestuck:cocoa_wart'
]

onEvent('item.tooltip', tooltip => {
    warts.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Warts'))
    })
  })
})