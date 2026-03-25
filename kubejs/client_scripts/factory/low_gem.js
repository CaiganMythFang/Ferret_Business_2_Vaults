
let low_gem = [
    'minecraft:lapis_lazuli', 
    'minecraft:quartz', 
    'minecraft:amethyst_shard', 
    'ae2:certus_quartz_crystal', 
    'ae2:charged_certus_quartz_crystal', 
    'ae2:fluix_crystal', 
    'create:rose_quartz', 
    'mekanism:fluorite_gem', 
    'thermal:niter', 
    'thermal:sulfur', 
    'tropicraft:azurite_gem', 
    'tropicraft:eudialyte_gem', 
    'tropicraft:zircon_gem',
    'viescraftmachines:xegonite_shard'
]

onEvent('item.tooltip', tooltip => {
    low_gem.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Low Gem'))
    })
  })
})