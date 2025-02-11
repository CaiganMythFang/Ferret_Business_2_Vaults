let removedOutputsF = [
    'farmingforblockheads:market'
];
onEvent("recipes", event => {
    removedOutputsF.forEach(id => {
        event.remove({ 'output': `${id}` })
    })

    event.shaped(Item.of('farmingforblockheads:market'),
        [
            'POP',
            'L L',
            'LLL'
        ], {
        P: 'the_vault:wooden_planks',
        O: 'the_vault:perfect_painite',
        L: 'the_vault:driftwood_planks'
    })


})