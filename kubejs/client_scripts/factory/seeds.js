
let seeds = [
    'minecraft:wheat_seeds', 
    'minecraft:pumpkin_seeds', 
    'minecraft:melon_seeds', 
    'minecraft:beetroot_seeds', 
    'botania:grass_seeds', 
    'botania:podzol_seeds', 
    'botania:dry_seeds', 
    'botania:golden_seeds', 
    'botania:vivid_seeds', 
    'botania:scorched_seeds', 
    'botania:infused_seeds', 
    'botania:mutated_seeds', 
    'supplementaries:flax_seeds', 
    'farmersdelight:cabbage_seeds', 
    'farmersdelight:tomato_seeds', 
    'farmersrespite:tea_seeds', 
    'ars_nouveau:magebloom_crop', 
    'occultism:datura_seeds', 
    'immersiveengineering:seed', 
    'createbb:ephedra_seeds', 
    'car:canola_seeds'

]

onEvent('item.tooltip', tooltip => {
    seeds.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Seeds'))
    })
  })
})