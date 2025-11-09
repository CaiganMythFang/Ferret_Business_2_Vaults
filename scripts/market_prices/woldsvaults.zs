import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// This variable controls whether we are in the pack dev mode or release mode. In Pack Dev mode, all EMC/FMC values are enabled to help calculate EMC/FMC for other mods.
var release_mode = false;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:woldsvaults:expertise_orb> : 2210500,
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
    if (release_mode == true){
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