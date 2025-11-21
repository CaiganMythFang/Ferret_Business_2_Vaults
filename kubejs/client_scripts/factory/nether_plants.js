
let nether_plants = [
    'minecraft:crimson_roots', 
    'minecraft:warped_roots', 
    'minecraft:twisting_vines'
]

onEvent('item.tooltip', tooltip => {
    nether_plants.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Nether Plants'))
    })
  })
})