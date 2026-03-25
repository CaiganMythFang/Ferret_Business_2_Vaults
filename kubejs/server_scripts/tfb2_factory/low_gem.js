
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

onEvent("item.tags", event => {
    low_gem.forEach(id => {
        event.add('tfb2:low_gem', `${id}`)
    })
})