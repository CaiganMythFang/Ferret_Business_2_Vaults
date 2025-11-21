
let arrows = [
    'minecraft:arrow', 
    'minecraft:spectral_arrow', 
    'minecraft:tipped_arrow', 
    'archers_paradox:quartz_arrow', 
    'archers_paradox:diamond_arrow', 
    'archers_paradox:prismarine_arrow', 
    'archers_paradox:slime_arrow', 
    'archers_paradox:ender_arrow', 
    'archers_paradox:training_arrow', 
    'archers_paradox:challenge_arrow', 
    'archers_paradox:phantasmal_arrow', 
    'archers_paradox:shulker_arrow', 
    'archers_paradox:blaze_arrow', 
    'archers_paradox:frost_arrow', 
    'archers_paradox:lightning_arrow', 
    'archers_paradox:verdant_arrow', 
    'archers_paradox:spore_arrow', 
    'ars_nouveau:pierce_arrow', 
    'ars_nouveau:split_arrow', 
    'ars_nouveau:amplify_arrow'
]

onEvent("item.tags", event => {
    arrows.forEach(id => {
        event.add('tfb2:arrows', `${id}`)
    })
})