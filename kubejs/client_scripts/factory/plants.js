
let plants = [
    'minecraft:grass',
    'minecraft:fern',
    'minecraft:bamboo',
    'minecraft:hanging_roots',
    'minecraft:tall_grass',
    'minecraft:large_fern',
    'minecraft:vine',
    'minecraft:glow_lichen'
]

onEvent('item.tooltip', tooltip => {
    plants.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Plants'))
    })
  })
})