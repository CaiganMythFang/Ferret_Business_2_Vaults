
let sea_plants = [
    'minecraft:seagrass', 
    'minecraft:kelp', 
    'minecraft:sea_pickle'
]

onEvent('item.tooltip', tooltip => {
    sea_plants.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Sea Plants'))
    })
  })
})