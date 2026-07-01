
let soul_bottle = [
    'animalistic_a:soul_bottle'
]

onEvent('item.tooltip', tooltip => {
    soul_bottle.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.green('To obtain, use a Water Bottle'))
          text.add(2, Text.yellow('on a block of Soul Sand.'))
    })
  })
})