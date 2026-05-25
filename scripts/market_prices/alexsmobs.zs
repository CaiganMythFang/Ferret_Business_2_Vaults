import crafttweaker.api.text.TextComponent;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:alexsmobs:ancient_dart> : 25,
    <item:alexsmobs:animal_dictionary> : 25,
    <item:alexsmobs:capsid> : 25,
    <item:alexsmobs:centipede_leggings> : 25,
    <item:alexsmobs:chorus_on_a_stick> : 5,
    <item:alexsmobs:crocodile_chestplate> : 25,
    <item:alexsmobs:echolocator> : 25,
    <item:alexsmobs:emu_leggings> : 25,
    <item:alexsmobs:endolocator> : 25,
    <item:alexsmobs:falconry_glove> : 25,
    <item:alexsmobs:falconry_glove_hand> : 25,
    <item:alexsmobs:falconry_glove_inventory> : 25,
    <item:alexsmobs:falconry_hood> : 25,
    <item:alexsmobs:flying_fish_boots> : 25,
    <item:alexsmobs:froststalker_helmet> : 25,
    <item:alexsmobs:gustmaker> : 25,
    <item:alexsmobs:halo> : 25,
    <item:alexsmobs:hemolymph_blaster> : 25,
    <item:alexsmobs:hemolymph_sac> : 25,
    <item:alexsmobs:komodo_spit_bottle> : 25,
    <item:alexsmobs:lava_bottle> : 1,
    <item:alexsmobs:leafcutter_ant_chamber> : 25,
    <item:alexsmobs:leafcutter_ant_pupa> : 25,
    <item:alexsmobs:leafcutter_anthill> : 25,
    <item:alexsmobs:maggot> : 1,
    <item:alexsmobs:mimicream> : 25,
    <item:alexsmobs:moose_headgear> : 25,
    <item:alexsmobs:mosquito_larva> : 25,
    <item:alexsmobs:mysterious_worm> : 25,
    <item:alexsmobs:pigshoes> : 25,
    <item:alexsmobs:pocket_sand> : 25,
    <item:alexsmobs:poison_bottle> : 25,
    <item:alexsmobs:potted_flutter> : 25,
    <item:alexsmobs:pupfish_locator> : 25,
    <item:alexsmobs:red_sand_circle> : 1,
    <item:alexsmobs:roadrunner_boots> : 25,
    <item:alexsmobs:rocky_chestplate> : 25,
    <item:alexsmobs:sand_circle> : 1,
    <item:alexsmobs:shark_tooth_arrow> : 1,
    <item:alexsmobs:shed_snake_skin> : 1,
    <item:alexsmobs:shield_of_the_deep> : 25,
    <item:alexsmobs:skelewag_sword> : 25,
    <item:alexsmobs:skelewag_sword_hand> : 0,
    <item:alexsmobs:skelewag_sword_inventory> : 0,
    <item:alexsmobs:soul_heart> : 25,
    <item:alexsmobs:spawn_egg_alligator_snapping_turtle> : 250,
    <item:alexsmobs:spawn_egg_anaconda> : 250,
    <item:alexsmobs:spawn_egg_anteater> : 250,
    <item:alexsmobs:spawn_egg_bald_eagle> : 250,
    <item:alexsmobs:spawn_egg_bison> : 250,
    <item:alexsmobs:spawn_egg_blobfish> : 250,
    <item:alexsmobs:spawn_egg_bone_serpent> : 250,
    <item:alexsmobs:spawn_egg_bunfungus> : 250,
    <item:alexsmobs:spawn_egg_cachalot_whale> : 250,
    <item:alexsmobs:spawn_egg_capuchin_monkey> : 250,
    <item:alexsmobs:spawn_egg_catfish> : 250,
    <item:alexsmobs:spawn_egg_centipede> : 250,
    <item:alexsmobs:spawn_egg_cockroach> : 250,
    <item:alexsmobs:spawn_egg_comb_jelly> : 250,
    <item:alexsmobs:spawn_egg_cosmaw> : 250,
    <item:alexsmobs:spawn_egg_cosmic_cod> : 250,
    <item:alexsmobs:spawn_egg_crimson_mosquito> : 250,
    <item:alexsmobs:spawn_egg_crocodile> : 250,
    <item:alexsmobs:spawn_egg_crow> : 250,
    <item:alexsmobs:spawn_egg_devils_hole_pupfish> : 250,
    <item:alexsmobs:spawn_egg_dropbear> : 250,
    <item:alexsmobs:spawn_egg_elephant> : 250,
    <item:alexsmobs:spawn_egg_emu> : 250,
    <item:alexsmobs:spawn_egg_endergrade> : 250,
    <item:alexsmobs:spawn_egg_enderiophage> : 250,
    <item:alexsmobs:spawn_egg_flutter> : 250,
    <item:alexsmobs:spawn_egg_fly> : 250,
    <item:alexsmobs:spawn_egg_flying_fish> : 250,
    <item:alexsmobs:spawn_egg_frilled_shark> : 250,
    <item:alexsmobs:spawn_egg_froststalker> : 250,
    <item:alexsmobs:spawn_egg_gazelle> : 250,
    <item:alexsmobs:spawn_egg_gelada_monkey> : 250,
    <item:alexsmobs:spawn_egg_giant_squid> : 250,
    <item:alexsmobs:spawn_egg_gorilla> : 250,
    <item:alexsmobs:spawn_egg_grizzly_bear> : 250,
    <item:alexsmobs:spawn_egg_guster> : 250,
    <item:alexsmobs:spawn_egg_hammerhead_shark> : 250,
    <item:alexsmobs:spawn_egg_hummingbird> : 250,
    <item:alexsmobs:spawn_egg_jerboa> : 250,
    <item:alexsmobs:spawn_egg_kangaroo> : 250,
    <item:alexsmobs:spawn_egg_komodo_dragon> : 250,
    <item:alexsmobs:spawn_egg_laviathan> : 250,
    <item:alexsmobs:spawn_egg_leafcutter_ant> : 250,
    <item:alexsmobs:spawn_egg_lobster> : 250,
    <item:alexsmobs:spawn_egg_maned_wolf> : 250,
    <item:alexsmobs:spawn_egg_mantis_shrimp> : 250,
    <item:alexsmobs:spawn_egg_mimic_octopus> : 250,
    <item:alexsmobs:spawn_egg_mimicube> : 250,
    <item:alexsmobs:spawn_egg_moose> : 250,
    <item:alexsmobs:spawn_egg_mungus> : 250,
    <item:alexsmobs:spawn_egg_orca> : 250,
    <item:alexsmobs:spawn_egg_platypus> : 250,
    <item:alexsmobs:spawn_egg_raccoon> : 250,
    <item:alexsmobs:spawn_egg_rattlesnake> : 250,
    <item:alexsmobs:spawn_egg_roadrunner> : 250,
    <item:alexsmobs:spawn_egg_rocky_roller> : 250,
    <item:alexsmobs:spawn_egg_seagull> : 250,
    <item:alexsmobs:spawn_egg_seal> : 250,
    <item:alexsmobs:spawn_egg_shoebill> : 250,
    <item:alexsmobs:spawn_egg_skelewag> : 250,
    <item:alexsmobs:spawn_egg_snow_leopard> : 250,
    <item:alexsmobs:spawn_egg_soul_vulture> : 250,
    <item:alexsmobs:spawn_egg_spectre> : 250,
    <item:alexsmobs:spawn_egg_straddler> : 250,
    <item:alexsmobs:spawn_egg_stradpole> : 250,
    <item:alexsmobs:spawn_egg_sunbird> : 250,
    <item:alexsmobs:spawn_egg_tarantula_hawk> : 250,
    <item:alexsmobs:spawn_egg_tasmanian_devil> : 250,
    <item:alexsmobs:spawn_egg_terrapin> : 250,
    <item:alexsmobs:spawn_egg_tiger> : 250,
    <item:alexsmobs:spawn_egg_toucan> : 250,
    <item:alexsmobs:spawn_egg_tusklin> : 250,
    <item:alexsmobs:spawn_egg_void_worm> : 250,
    <item:alexsmobs:spawn_egg_warped_mosco> : 250,
    <item:alexsmobs:spawn_egg_warped_toad> : 250,
    <item:alexsmobs:squid_grapple> : 25,
    <item:alexsmobs:straddle_helmet> : 25,
    <item:alexsmobs:straddle_saddle> : 25,
    <item:alexsmobs:straddleboard> : 1,
    <item:alexsmobs:straddlite> : 1,
    <item:alexsmobs:straddlite_block> : 1,
    <item:alexsmobs:tab_icon> : 0,
    <item:alexsmobs:tarantula_hawk_elytra> : 25,
    <item:alexsmobs:vine_lasso_hand> : 0,
    <item:alexsmobs:vine_lasso_inventory> : 0,
    <item:alexsmobs:void_worm_effigy> : 25,
    <item:alexsmobs:warped_mixture> : 25,
    <item:alexsmobs:warped_muscle> : 25,
    <item:alexsmobs:dimensional_carver> : 9100,
    <item:alexsmobs:acacia_blossom> : 5,
    <item:alexsmobs:ambergris> : 25,
    <item:alexsmobs:banana> : 5,
    <item:alexsmobs:banana_peel> : 5,
    <item:alexsmobs:banner_pattern_australia_0> : 25,
    <item:alexsmobs:banner_pattern_australia_1> : 25,
    <item:alexsmobs:banner_pattern_bear> : 25,
    <item:alexsmobs:banner_pattern_brazil> : 25,
    <item:alexsmobs:banner_pattern_new_mexico> : 25,
    <item:alexsmobs:bear_dust> : 25,
    <item:alexsmobs:bear_fur> : 25,
    <item:alexsmobs:bison_carpet> : 25,
    <item:alexsmobs:bison_fur> : 25,
    <item:alexsmobs:bison_fur_block> : 25,
    <item:alexsmobs:blobfish> : 25,
    <item:alexsmobs:blobfish_bucket> : 375,
    <item:alexsmobs:blood_sac> : 25,
    <item:alexsmobs:blood_sprayer> : 25,
    <item:alexsmobs:boiled_emu_egg> : 25,
    <item:alexsmobs:bone_serpent_tooth> : 25,
    <item:alexsmobs:cachalot_whale_tooth> : 25,
    <item:alexsmobs:centipede_leg> : 25,
    <item:alexsmobs:cockroach_ootheca> : 25,
    <item:alexsmobs:cockroach_wing> : 25,
    <item:alexsmobs:cockroach_wing_fragment> : 25,
    <item:alexsmobs:comb_jelly_bucket> : 375,
    <item:alexsmobs:cooked_catfish> : 25,
    <item:alexsmobs:cooked_kangaroo_meat> : 25,
    <item:alexsmobs:cooked_lobster_tail> : 25,
    <item:alexsmobs:cooked_moose_ribs> : 25,
    <item:alexsmobs:cosmic_cod> : 25,
    <item:alexsmobs:cosmic_cod_bucket> : 375,
    <item:alexsmobs:crocodile_egg> : 25,
    <item:alexsmobs:crocodile_scute> : 25,
    <item:alexsmobs:devils_hole_pupfish_bucket> : 375,
    <item:alexsmobs:dropbear_claw> : 25,
    <item:alexsmobs:emu_egg> : 25,
    <item:alexsmobs:emu_feather> : 25,
    <item:alexsmobs:enderiophage_rocket> : 25,
    <item:alexsmobs:fedora> : 25,
    <item:alexsmobs:fish_bones> : 25,
    <item:alexsmobs:fish_oil> : 25,
    <item:alexsmobs:flying_fish> : 25,
    <item:alexsmobs:flying_fish_bucket> : 375,
    <item:alexsmobs:frilled_shark_bucket> : 375,
    <item:alexsmobs:frontier_cap> : 25,
    <item:alexsmobs:froststalker_horn> : 25,
    <item:alexsmobs:gazelle_horn> : 25,
    <item:alexsmobs:gongylidia> : 5,
    <item:alexsmobs:guster_eye> : 25,
    <item:alexsmobs:hummingbird_feeder> : 25,
    <item:alexsmobs:kangaroo_burger> : 25,
    <item:alexsmobs:kangaroo_hide> : 25,
    <item:alexsmobs:kangaroo_meat> : 25,
    <item:alexsmobs:komodo_spit> : 25,
    <item:alexsmobs:large_catfish_bucket> : 125,
    <item:alexsmobs:lobster_bucket> : 375,
    <item:alexsmobs:lobster_tail> : 25,
    <item:alexsmobs:lost_tentacle> : 25,
    <item:alexsmobs:maraca> : 25,
    <item:alexsmobs:medium_catfish_bucket> : 375,
    <item:alexsmobs:mimic_octopus_bucket> : 375,
    <item:alexsmobs:moose_antler> : 25,
    <item:alexsmobs:moose_ribs> : 25,
    <item:alexsmobs:mosquito_proboscis> : 25,
    <item:alexsmobs:mungal_spores> : 5,
    <item:alexsmobs:music_disc_daze> : 25,
    <item:alexsmobs:music_disc_thime> : 25,
    <item:alexsmobs:novelty_hat> : 25,
    <item:alexsmobs:platypus_bucket> : 375,
    <item:alexsmobs:raccoon_tail> : 25,
    <item:alexsmobs:rainbow_glass> : 1,
    <item:alexsmobs:rainbow_jelly> : 25,
    <item:alexsmobs:rattlesnake_rattle> : 25,
    <item:alexsmobs:raw_catfish> : 25,
    <item:alexsmobs:roadrunner_feather> : 25,
    <item:alexsmobs:rocky_shell> : 25,
    <item:alexsmobs:serrated_shark_tooth> : 25,
    <item:alexsmobs:shark_tooth> : 25,
    <item:alexsmobs:shrimp_fried_rice> : 25,
    <item:alexsmobs:small_catfish_bucket> : 375,
    <item:alexsmobs:sombrero> : 25,
    <item:alexsmobs:sopa_de_macaco> : 5,
    <item:alexsmobs:spiked_scute> : 25,
    <item:alexsmobs:spiked_turtle_shell> : 25,
    <item:alexsmobs:stradpole_bucket> : 375,
    <item:alexsmobs:tarantula_hawk_wing> : 25,
    <item:alexsmobs:tarantula_hawk_wing_fragment> : 25,
    <item:alexsmobs:terrapin_bucket> : 375,
    <item:alexsmobs:terrapin_egg> : 25,
    <item:alexsmobs:vine_lasso> : 750,
    <item:alexsmobs:void_worm_beak> : 25,
    <item:alexsmobs:void_worm_eye> : 25,
    <item:alexsmobs:void_worm_mandible> : 25
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
            item.addTooltip(new TextComponent("FOP Digitization Value: Miniscule").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Small").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Medium").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Large").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
        
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Small").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Medium").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Large").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
    }
}