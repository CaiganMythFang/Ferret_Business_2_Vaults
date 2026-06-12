
let grist_candy = [
    'minestuck:build_gushers',
    'minestuck:amber_gummy_worm',
    'minestuck:caulk_pretzel',
    'minestuck:chalk_candy_cigarette',
    'minestuck:iodine_licorice',
    'minestuck:shale_peep',
    'minestuck:tar_licorice',
    'minestuck:cobalt_gum',
    'minestuck:marble_jawbreaker',
    'minestuck:mercury_sixlets',
    'minestuck:quartz_jelly_bean',
    'minestuck:sulfur_candy_apple',
    'minestuck:amethyst_hard_candy',
    'minestuck:garnet_twix',
    'minestuck:ruby_lollipop',
    'minestuck:rust_gummy_eye',
    'minestuck:diamond_mint',
    'minestuck:gold_candy_ribbon',
    'minestuck:uranium_gummy_bear',
    'minestuck:artifact_warhead',
    'minestuck:zillium_skittles',
    'kubejs:chroma_gum_drop',
    'kubejs:carbs_marshmallow',
    'kubejs:scrappy_lolly',
    'kubejs:vitamin_v_jellybean',
    'kubejs:rainbownium_twist_candy',
    'kubejs:ego_chocolate_truffle',
    'kubejs:morkite_sucker',
    'kubejs:boxium_chocolate_square',
    'kubejs:deserialized_mint',
    'kubejs:the_world_jawbreaker',
    'kubejs:junkite_hard_candy',
    'kubejs:fopium_chocolate_coin',
    'kubejs:greed_filled_bonbon'
]

onEvent("item.tags", event => {
    grist_candy.forEach(id => {
        event.add('tfb2:grist_candy', `${id}`)
    })
})