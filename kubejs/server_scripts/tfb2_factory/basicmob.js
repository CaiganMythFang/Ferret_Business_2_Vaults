
let basicmob = [
    'minecraft:spider_eye', 
    'minecraft:gunpowder', 
    'minecraft:bone', 
    'minecraft:rotten_flesh', 
    'minecraft:shulker_shell',
    'minecraft:slime_ball'
]

onEvent("item.tags", event => {
    basicmob.forEach(id => {
        event.add('tfb2:basicmob', `${id}`)
    })
})