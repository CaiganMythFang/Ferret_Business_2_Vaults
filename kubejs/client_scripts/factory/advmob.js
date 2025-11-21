
let advmob = [
    'minecraft:blaze_rod', 
    'minecraft:ender_pearl', 
    'minecraft:ghast_tear', 
    'minecraft:magma_cream', 
    'minecraft:phantom_membrane', 
    'minecraft:wither_skeleton_skull'
]

onEvent('item.tooltip', tooltip => {
    advmob.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Advanced Mob Parts'))
    })
  })
})