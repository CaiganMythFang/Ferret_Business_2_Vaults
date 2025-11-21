
let seafood = [
    'minecraft:salmon', 
    'minecraft:tropical_fish', 
    'minecraft:pufferfish', 
    'crittersandcompanions:koi_fish', 
    'crittersandcompanions:clam', 
    'ecologics:crab_claw'
]

onEvent("item.tags", event => {
    seafood.forEach(id => {
        event.add('tfb2:seafood', `${id}`)
    })
})