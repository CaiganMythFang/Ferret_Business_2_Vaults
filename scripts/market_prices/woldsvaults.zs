import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:woldsvaults:crate_cracker> : 37025,
    <item:woldsvaults:monolith> : 9050,
    <item:woldsvaults:doll_dismantler> : 12625,
    <item:woldsvaults:dust_of_power> : 13750,
    <item:woldsvaults:echoing_seed_base> : 630600,
    <item:woldsvaults:combined_trinket> : 2000,
    <item:woldsvaults:idona_bricks_slab> : 225,
    <item:woldsvaults:idona_bricks_stairs> : 475,
    <item:woldsvaults:idona_brick_chiseled_slab> : 225,
    <item:woldsvaults:idona_bricks_chiseled_stairs> : 475,
    <item:woldsvaults:idona_dark_smooth_bricks_slab> : 225,
    <item:woldsvaults:idona_dark_smooth_bricks_stairs> : 475,
    <item:woldsvaults:idona_gem_block_slab> : 225,
    <item:woldsvaults:idona_gem_block_stairs> : 475,
    <item:woldsvaults:idona_light_smooth_bricks_slab> : 225,
    <item:woldsvaults:idona_light_smooth_bricks_stairs> : 475,
    <item:woldsvaults:configurable_floating_text> : 10425,
    <item:woldsvaults:mob_binding_stone> : 4700,
    <item:woldsvaults:owned_crafting_table> : 3700,
    <item:woldsvaults:pogging_seed_base> : 104000,
    <item:woldsvaults:scavenger_pouch> : 15025,
    <item:woldsvaults:crystal_seal_alchemy> : 59225,
    <item:woldsvaults:crystal_seal_survivor> : 35100,
    <item:woldsvaults:tenos_bricks_slab> : 200,
    <item:woldsvaults:tenos_bricks_stairs> : 425,
    <item:woldsvaults:tenos_brick_chiseled_slab> : 200,
    <item:woldsvaults:tenos_bricks_chiseled_stairs> : 425,
    <item:woldsvaults:tenos_dark_smooth_bricks_slab> : 200,
    <item:woldsvaults:tenos_dark_smooth_bricks_stairs> : 425,
    <item:woldsvaults:tenos_gem_block_slab> : 200,
    <item:woldsvaults:tenos_gem_block_stairs> : 425,
    <item:woldsvaults:tenos_light_smooth_bricks_slab> : 200,
    <item:woldsvaults:tenos_light_smooth_bricks_stairs> : 425,
    <item:woldsvaults:tenos_planks_slab> : 1,
    <item:woldsvaults:tenos_planks_stairs> : 1,
    <item:woldsvaults:trinket_fusion_forge> : 636450,
    <item:woldsvaults:velara_bricks_slab> : 200,
    <item:woldsvaults:velara_bricks_stairs> : 425,
    <item:woldsvaults:velara_brick_chiseled_slab> : 200,
    <item:woldsvaults:velara_bricks_chiseled_stairs> : 425,
    <item:woldsvaults:velara_dark_smooth_bricks_slab> : 200,
    <item:woldsvaults:velara_dark_smooth_bricks_stairs> : 425,
    <item:woldsvaults:velara_gem_block_slab> : 200,
    <item:woldsvaults:velara_gem_block_stairs> : 425,
    <item:woldsvaults:velara_light_smooth_bricks_slab> : 200,
    <item:woldsvaults:velara_light_smooth_bricks_stairs> : 425,
    <item:woldsvaults:verdant_globule> : 100,
    <item:woldsvaults:wendarr_bricks_slab> : 200,
    <item:woldsvaults:wendarr_bricks_stairs> : 425,
    <item:woldsvaults:wendarr_brick_chiseled_slab> : 200,
    <item:woldsvaults:wendarr_bricks_chiseled_stairs> : 425,
    <item:woldsvaults:wendarr_dark_smooth_bricks_slab> : 200,
    <item:woldsvaults:wendarr_dark_smooth_bricks_stairs> : 425,
    <item:woldsvaults:wendarr_gem_block_slab> : 200,
    <item:woldsvaults:wendarr_gem_block_stairs> : 425,
    <item:woldsvaults:wendarr_jewel_block_slab> : 200,
    <item:woldsvaults:wendarr_jewel_block_stairs> : 425,
    <item:woldsvaults:wendarr_light_smooth_bricks_slab> : 200,
    <item:woldsvaults:wendarr_light_smooth_bricks_stairs> : 425,
    <item:woldsvaults:iskallian_leaves> : 1,
    <item:woldsvaults:auric_crystal> : 100,
    <item:woldsvaults:catalyst_amplifying> : 100,
    <item:woldsvaults:catalyst_focusing> : 100,
    <item:woldsvaults:catalyst_temporal> : 100,
    <item:woldsvaults:catalyst_unstable> : 100,
    <item:woldsvaults:catalyst_stability> : 100,
    <item:woldsvaults:companion_reroller> : 100,
    <item:woldsvaults:erratic_ember> : 100,
    <item:woldsvaults:rotten_heart> : 100,
    <item:woldsvaults:refined_powder> : 100,
    <item:woldsvaults:rotten_apple> : 100,
    <item:woldsvaults:blacksmith_shop_pedestal> : 0,
    <item:woldsvaults:crystal_seal_raid_rock_infinite_hard> : 0,
    <item:woldsvaults:molten_trinket_bucket> : 0,
    <item:woldsvaults:prismatic_glue_bucket> : 0,
    <item:woldsvaults:crystal_seal_doomsayer_shuffle> : 0,
    <item:woldsvaults:accoutre_focus> : 0,
    <item:woldsvaults:vault_crate_alchemy> : 0,
    <item:woldsvaults:vault_crate_ballistic_bingo> : 0,
    <item:woldsvaults:card_shop_pedestal> : 0,
    <item:woldsvaults:blue_unobtanium> : 0,
    <item:woldsvaults:blue_unobtanium_block> : 0,
    <item:woldsvaults:black_unobtanium_block> : 0,
    <item:woldsvaults:black_unobtanium> : 0,
    <item:woldsvaults:boogieman_spawn_egg> : 0,
    <item:woldsvaults:blue_blaze_spawn_egg> : 0,
    <item:woldsvaults:brewing_altar> : 0,
    <item:woldsvaults:brown_unobtanium_block> : 0,
    <item:woldsvaults:brown_unobtanium> : 0,
    <item:woldsvaults:vault_crate_brutal_bosses> : 0,
    <item:woldsvaults:vault_crate_enchanted_elixir> : 0,
    <item:woldsvaults:vault_crate_corrupt> : 0,
    <item:woldsvaults:community_token> : 0,
    <item:woldsvaults:cyan_unobtanium> : 0,
    <item:woldsvaults:cyan_unobtanium_block> : 0,
    <item:woldsvaults:drygmy_spawn_egg> : 0,
    <item:woldsvaults:dungeon_pedestal> : 0,
    <item:woldsvaults:etching_shop_pedestal> : 0,
    <item:woldsvaults:fractured_obelisk> : 0,
    <item:woldsvaults:gateway_channeling_block> : 0,
    <item:woldsvaults:god_shop_pedestal> : 0,
    <item:woldsvaults:gray_unobtanium> : 0,
    <item:woldsvaults:gray_unobtanium_block> : 0,
    <item:woldsvaults:green_unobtanium_block> : 0,
    <item:woldsvaults:green_unobtanium> : 0,
    <item:woldsvaults:vault_crate_haunted_braziers> : 0,
    <item:woldsvaults:infused_driftwood_planks> : 0,
    <item:woldsvaults:deco_potion> : 0,
    <item:woldsvaults:exquisite_box> : 0,
    <item:woldsvaults:ingredient_template> : 0,
    <item:woldsvaults:monolith_controller> : 0,
    <item:woldsvaults:magenta_unobtanium_block> : 0,
    <item:woldsvaults:magenta_unobtanium> : 0,
    <item:woldsvaults:lime_unobtanium_block> : 0,
    <item:woldsvaults:lime_unobtanium> : 0,
    <item:woldsvaults:light_gray_unobtanium_block> : 0,
    <item:woldsvaults:light_gray_unobtanium> : 0,
    <item:woldsvaults:light_blue_unobtanium_block> : 0,
    <item:woldsvaults:light_blue_unobtanium> : 0,
    <item:woldsvaults:monster_eye_spawn_egg> : 0,
    <item:woldsvaults:obelisk_resonator> : 0,
    <item:woldsvaults:omega_shop_pedestal> : 0,
    <item:woldsvaults:orange_unobtanium> : 0,
    <item:woldsvaults:orange_unobtanium_block> : 0,
    <item:woldsvaults:pink_unobtanium_block> : 0,
    <item:woldsvaults:pink_unobtanium> : 0,
    <item:woldsvaults:purple_unobtanium_block> : 0,
    <item:woldsvaults:purple_unobtanium> : 0,
    <item:woldsvaults:puzzle_cube> : 0,
    <item:woldsvaults:rainbow_unobtanium_block> : 0,
    <item:woldsvaults:rainbow_unobtanium> : 0,
    <item:woldsvaults:rare_shop_pedestal> : 0,
    <item:woldsvaults:recipe_blueprint> : 0,
    <item:woldsvaults:red_unobtanium> : 0,
    <item:woldsvaults:red_unobtanium_block> : 0,
    <item:woldsvaults:robot_spawn_egg> : 0,
    <item:woldsvaults:crystal_seal_warrior> : 0,
    <item:woldsvaults:crystal_seal_zealot> : 0,
    <item:woldsvaults:spooky_shop_pedestal> : 0,
    <item:woldsvaults:survival_objective_block> : 0,
    <item:woldsvaults:spark_of_inspiration> : 0,
    <item:woldsvaults:vault_crate_survival> : 0,
    <item:woldsvaults:targeted_mod_box> : 0,
    <item:woldsvaults:vault_crate_time_trial_reward> : 0,
    <item:woldsvaults:time_trial_trophy> : 0,
    <item:woldsvaults:tombstone> : 0,
    <item:woldsvaults:waning_augmenter> : 0,
    <item:woldsvaults:waxing_augmenter> : 0,
    <item:woldsvaults:trinket_pouch> : 0,
    <item:woldsvaults:vault_crate_unhinged_scavenger> : 0,
    <item:woldsvaults:vault_crate_zealot> : 0,
    <item:woldsvaults:yellow_unobtanium> : 0,
    <item:woldsvaults:yellow_unobtanium_block> : 0,
    <item:woldsvaults:white_unobtanium> : 0,
    <item:woldsvaults:white_unobtanium_block> : 0,
    <item:woldsvaults:wold_spawn_egg> : 0,
    <item:woldsvaults:capstone_vendoors> : 0,
    <item:woldsvaults:skill_orb> : 0,
    <item:woldsvaults:uninfused_terrasteel_ingot> : 2150,
    <item:woldsvaults:vault_plating_block> : 450,
    <item:woldsvaults:carbon_block> : 400,
    <item:woldsvaults:vault_ingot_block> : 130050,
    <item:woldsvaults:vault_essence_block> : 7875,
    <item:woldsvaults:expertise_orb> : 2210500,
    <item:woldsvaults:smashed_vault_gem> : 1000,
    <item:woldsvaults:smashed_vault_gem_cluster> : 4000,
    <item:woldsvaults:silver_scrap_block> : 225,
    <item:woldsvaults:gem_box> : 750,
    <item:woldsvaults:omega_pog_block> : 842400,
    <item:woldsvaults:pog_block> : 81000,
    <item:woldsvaults:supply_box> : 375,
    <item:woldsvaults:gem_reagent_ashium> : 5350,
    <item:woldsvaults:gem_reagent_bomignite> : 5350,
    <item:woldsvaults:gem_reagent_gorginite> : 5350,
    <item:woldsvaults:gem_reagent_iskallium> : 5350,
    <item:woldsvaults:gem_reagent_petzanite> : 5350,
    <item:woldsvaults:gem_reagent_sparkletine> : 5350,
    <item:woldsvaults:gem_reagent_tubium> : 5350,
    <item:woldsvaults:gem_reagent_upaline> : 5350,
    <item:woldsvaults:gem_reagent_xenium> : 5350,
    <item:woldsvaults:chromatic_gold_block> : 84425,
    <item:woldsvaults:chromatic_gold_ingot> : 9275,
    <item:woldsvaults:chromatic_gold_nugget> : 1045,
    <item:woldsvaults:augment_box> : 850,
    <item:woldsvaults:altar_recatalyzer> : 3000,
    <item:woldsvaults:vault_salvager> : 124125,
    <item:woldsvaults:pog_prism> : 31650,
    <item:woldsvaults:crystal_seal_spirits> : 33625,
    <item:woldsvaults:crystal_seal_titan> : 61225,
    <item:woldsvaults:crystal_seal_unhinged> : 42475,
    <item:woldsvaults:crystal_seal_doomsayer> : 60025,
    <item:woldsvaults:crystal_seal_enchanter> : 63700,
    <item:woldsvaults:wold_star_chunk> : 25000,
    <item:woldsvaults:wold_star> : 1250000,
    <item:woldsvaults:echo_pog_block> : 900000,
    <item:woldsvaults:nullite_crystal> : 650000,
    <item:woldsvaults:prismatic_angel_ring> : 4596150,
    <item:woldsvaults:zephyr_charm> : 1572150,
    <item:woldsvaults:black_chromatic_steel_angel_ring> : 2488400,
    <item:woldsvaults:heart_of_chaos> : 1171200,
    <item:woldsvaults:nullite_fragment> : 130000,
    <item:woldsvaults:nullite_ore> : 130000,
    <item:woldsvaults:resonating_reinforcement> : 239550,
    <item:woldsvaults:ruined_essence> : 130000,
    <item:woldsvaults:xl_backpack> : 1857125,
    <item:woldsvaults:chromatic_steel_angel_ring> : 1827800,
    <item:woldsvaults:chromatic_gold_angel_ring> : 1458400,
    <item:woldsvaults:arcane_essence> : 25000,
    <item:woldsvaults:arcane_shard> : 225000,
    <item:woldsvaults:chromatic_iron_angel_ring> : 655450,
    <item:woldsvaults:chunk_of_power> : 55000,
    <item:woldsvaults:crystal_reinforcement> : 2849480,
    <item:woldsvaults:crystal_seal_corrupt> : 150000,
    <item:woldsvaults:enigma_egg> : 11250,
    <item:woldsvaults:extraordinary_pog_prism> : 400720,
    <item:woldsvaults:greedy_vault_rock> : 9000,
    <item:woldsvaults:idona_dagger> : 225600,
    <item:woldsvaults:mod_box_workstation> : 132800,
    <item:woldsvaults:omega_box> : 35000,
    <item:woldsvaults:pogominium_ingot> : 148550,
    <item:woldsvaults:prismatic_fiber_block> : 741550,
    <item:woldsvaults:repair_augmenter> : 81875,
    <item:woldsvaults:tome_of_tenos> : 225600,
    <item:woldsvaults:uber_chaos_catalyst> : 1331200,
    <item:woldsvaults:unidentified_gateway_pearl> : 20000,
    <item:woldsvaults:velara_apple> : 225600,
    <item:woldsvaults:wendarr_gem> : 225600,
    <item:woldsvaults:augment_crafting_table> : 133875,
    <item:woldsvaults:blazing_focus> : 8500,
    <item:woldsvaults:capstone_enchanted> : 8750,
    <item:woldsvaults:capstone_frenzy> : 11000,
    <item:woldsvaults:eccentric_focus> : 8750,
    <item:woldsvaults:filter_necklace> : 32600,
    <item:woldsvaults:general_decor_scroll> : 6000,
    <item:woldsvaults:hasty_pomegranate> : 25000,
    <item:woldsvaults:lodestone> : 24000,
    <item:woldsvaults:mercy_orb> : 43400,
    <item:woldsvaults:obelisk> : 6975,
    <item:woldsvaults:poltergeist_plum> : 25000,
    <item:woldsvaults:prismatic_fiber> : 82400,
    <item:woldsvaults:scavenger_altar> : 6350,
    <item:woldsvaults:soul_ichor> : 8000,
    <item:woldsvaults:suspension_focus> : 8500,
    <item:woldsvaults:wisdom_fruit> : 2500,
    <item:woldsvaults:augment_piece> : 500,
    <item:woldsvaults:capstone_all_seeing_eye> : 5150,
    <item:woldsvaults:capstone_prosperous> : 7500,
    <item:woldsvaults:catalyst_box> : 5850,
    <item:woldsvaults:chroma_core> : 8400,
    <item:woldsvaults:chromatic_steel_vault_infuser> : 28500,
    <item:woldsvaults:inscription_box> : 3500,
    <item:woldsvaults:chromatic_iron_vault_infuser> : 2150,
    <item:woldsvaults:infused_driftwood> : 3575,
    <item:woldsvaults:mob_barrier_red> : 125,
    <item:woldsvaults:stylish_focus> : 5825,
    <item:woldsvaults:vault_diamond_nugget> : 25,
    <item:woldsvaults:vault_rock_candy> : 25,
    <item:woldsvaults:vaultar_box> : 150,
    <item:woldsvaults:weaving_station> : 600,
    <item:woldsvaults:chiseling_focus> : 6000,
    <item:woldsvaults:god_offering> : 5000,
    <item:woldsvaults:hellish_sand> : 2,
    <item:woldsvaults:layout_manipulator> : 5000,
    <item:woldsvaults:research_token> : 50000
};

// For each item in the map, check if we're in release mode. If we are, anything below 26 EMC/FMC becomes unburnable for EMC
for item, value in priceTable {
    if (ReleaseMode.releaseMode == true){
        if (value < 26 ) {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), 0);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
        } else {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
        }
        if (value > 999 && value < 10001) {
            <tag:items:tfb2:fop_miniscule>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Miniscule");
            });
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
}