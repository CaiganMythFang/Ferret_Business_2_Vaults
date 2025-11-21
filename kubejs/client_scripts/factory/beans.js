
let beans = [
    'minecraft:cocoa_beans', 
    'tropicraft:raw_coffee_bean', 
    'coffee_delight:coffee_beans', 
    'farmersrespite:coffee_beans'
]

onEvent('item.tooltip', tooltip => {
    beans.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Beans'))
    })
  })
})