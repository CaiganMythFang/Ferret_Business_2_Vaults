let removedOutputsDeletetd = [
'tfb2:deleted_item'
];
onEvent("recipes", event => {
    removedOutputsDeletetd.forEach(id => {
        event.remove({ 'output': `${id}` })
    })

    event.replaceInput({ id: 'computercraft:computer_normal' }, 'the_vault:echo_pog', 'woldsvaults:pog_prism')




})

onEvent('jei.hide.items', event => {
  event.hide('tfb2:deleted_item')
})