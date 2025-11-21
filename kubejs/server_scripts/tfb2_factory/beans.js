
let beans = [
    'minecraft:cocoa_beans', 
    'tropicraft:raw_coffee_bean', 
    'coffee_delight:coffee_beans', 
    'farmersrespite:coffee_beans'
]

onEvent("item.tags", event => {
    beans.forEach(id => {
        event.add('tfb2:beans', `${id}`)
    })
})