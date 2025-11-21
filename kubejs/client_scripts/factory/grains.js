
let grains = [
    'minecraft:wheat', 
    'farmersdelight:rice'
]

onEvent('item.tooltip', tooltip => {
    grains.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Grains'))
    })
  })
})