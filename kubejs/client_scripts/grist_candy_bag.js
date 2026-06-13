
let grist_candy = [
    'tfb2:grist_candy_bag'
]

onEvent('item.tooltip', tooltip => {
    grist_candy.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.green('Contains tasty Grist Candy!'))
          text.add(2, Text.yellow('Right Click to Open!'))
    })
  })
})