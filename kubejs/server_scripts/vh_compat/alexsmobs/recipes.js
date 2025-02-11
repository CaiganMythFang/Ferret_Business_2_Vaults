
onEvent("recipes", event => {

    event.shaped(Item.of('alexsmobs:lost_tentacle'),
        [
            ' OO',
            'P O',
            'OOO'
        ], {
        P: 'the_vault:gem_pog',
        O: 'the_vault:vault_meat_block'
    })

    event.shaped(Item.of('alexsmobs:dimensional_carver'),
        [
            'VEV',
            ' I ',
            ' I '
        ], {
        V: 'alexsmobs:void_worm_mandible',
        E: 'alexsmobs:void_worm_eye',
        I: 'the_vault:black_chromatic_steel_ingot'
    })

    event.shaped(Item.of('alexsmobs:vine_lasso'),
        [
            ' VL',
            'VXV',
            'AV '
        ], {
        V: 'minecraft:vine',
        A: 'alexsmobs:shed_snake_skin',
        L: 'minecraft:lead',
        X: 'the_vault:perfect_alexandrite'
    })

    event.shaped(Item.of('alexsmobs:squid_grapple'),
        [
            'TTT',
            'IXI',
            ' I '
        ], {
        T: 'alexsmobs:lost_tentacle',
        I: 'minecraft:copper_ingot',
        X: 'minecraft:crossbow'
    })



})