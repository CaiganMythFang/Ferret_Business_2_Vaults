onEvent('recipes', event => {

    event.shaped(Item.of('woldsvaults:lodestone'),
        [
            'GXG',
            'XRX',
            'GXG'
        ], {
        G: 'minecraft:amethyst_block',
        X: 'the_vault:gem_wutodie',
        R: 'woldsvaults:general_decor_scroll'
    })

    event.shaped(Item.of('woldsvaults:obelisk'),
        [
            'GXG',
            'GRG',
            'GXG'
        ], {
        G: 'the_vault:living_rock_block_cobble',
        X: 'the_vault:gem_painite',
        R: 'woldsvaults:general_decor_scroll'
    })

    event.shaped(Item.of('woldsvaults:scavenger_altar'),
        [
            'GXG',
            ' R ',
            'GXG'
        ], {
        G: 'minecraft:smooth_stone',
        X: 'the_vault:gem_alexandrite',
        R: 'woldsvaults:general_decor_scroll'
    })

    event.shaped(Item.of('woldsvaults:monolith'),
        [
            ' C ',
            'GRG',
            'GXG'
        ], {
        G: 'the_vault:ornate_block',
        X: 'the_vault:eternal_soul',
        R: 'woldsvaults:general_decor_scroll',
        C: 'minecraft:campfire'
    })

})