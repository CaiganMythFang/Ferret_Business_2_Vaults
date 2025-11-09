let removedOutputsBST = [
    'bonsaitrees3:bonsaipot',
];
onEvent("recipes", event => {
    // removedOutputsBST.forEach(id => {
    //     event.remove({ 'output': `${id}` })
    // })
    // 
    // event.shaped(Item.of('bonsaitrees3:bonsaipot'),
    //     [
    //         'BVB',
    //         'BMB',
    //         'III'
    //     ], {
    //         B: '#forge:ingots/brick',
    //         V: 'woldsvaults:chroma_core',
    //         M: 'the_vault:packed_vault_meat_block',
    //         I: 'the_vault:chromatic_steel_ingot'
    // 
    //     });

    //🌱  Ecologics Saplings

    event.custom({
        type: 'bonsaitrees3:sapling',
        sapling: {
            item: 'ecologics:walnut_sapling'
        },
        drops: [
            {
                rolls: 1,
                chance: 0.05,
                result: {
                    item: 'ecologics:walnut_sapling'
                }
            },
            {
                rolls: 1,
                chance: 0.9,
                result: {
                    item: 'ecologics:walnut_log'
                }
            },
            {
                rolls: 2,
                chance: 0.5,
                result: {
                    item: 'minecraft:stick'
                }
            },
            {
                rolls: 1,
                chance: 0.25,
                result: {
                    item: 'ecologics:walnut_leaves'
                },
                requiresSilkTouch: true
            },
            {
                rolls: 1,
                chance: 0.1,
                result: {
                    item: 'ecologics:walnut'
                },
                requiresBeeHive: true
            }
        ],
        compatibleSoilTags: [
            'dirt',
            'grass'
        ]
    }).id('bonsaitrees3:ecologics/walnut_sapling');




})
