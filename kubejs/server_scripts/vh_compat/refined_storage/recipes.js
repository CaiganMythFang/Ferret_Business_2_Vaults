let removedOutputsRS = [
    /refinedstorage:.*/
];
onEvent("recipes", event => {
    removedOutputsRS.forEach(id => {
        event.remove({ 'output': `${id}` })
    })
})