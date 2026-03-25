import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:occultism:miner_marid_master> : 217925,
    <item:occultism:miner_afrit_deeps> : 180587,
    <item:occultism:storage_controller> : 255775,
    <item:occultism:storage_stabilizer_tier4> : 286550,
    <item:occultism:dimensional_matrix> : 152500,
    <item:occultism:storage_controller_base> : 103275,
    <item:occultism:storage_remote> : 143200,
    <item:occultism:storage_stabilizer_tier3> : 130150,
    <item:occultism:dimensional_mineshaft> : 47075,
    <item:occultism:familiar_ring> : 45875,
    <item:occultism:golden_sacrificial_bowl> : 79000,
    <item:occultism:miner_djinni_ores> : 66975,
    <item:occultism:stable_wormhole> : 38675,
    <item:occultism:storage_remote_inert> : 28500,
    <item:occultism:wormhole_frame> : 37100,
    <item:occultism:afrit_essence> : 25,
    <item:occultism:book_of_binding_afrit> : 100,
    <item:occultism:book_of_binding_bound_afrit> : 100,
    <item:occultism:book_of_binding_bound_djinni> : 100,
    <item:occultism:book_of_binding_bound_foliot> : 100,
    <item:occultism:book_of_binding_bound_marid> : 100,
    <item:occultism:book_of_binding_djinni> : 100,
    <item:occultism:book_of_binding_foliot> : 100,
    <item:occultism:book_of_binding_marid> : 100,
    <item:occultism:candle_white> : 175,
    <item:occultism:chalk_gold> : 12725,
    <item:occultism:chalk_gold_impure> : 12725,
    <item:occultism:chalk_purple> : 9700,
    <item:occultism:chalk_purple_impure> : 9700,
    <item:occultism:chalk_red> : 4525,
    <item:occultism:chalk_red_impure> : 4525,
    <item:occultism:chalk_white> : 2650,
    <item:occultism:chalk_white_impure> : 2650,
    <item:occultism:crushed_end_stone> : 1,
    <item:occultism:gold_dust> : 675,
    <item:occultism:iesnium_block> : 5850,
    <item:occultism:iesnium_dust> : 650,
    <item:occultism:iesnium_ingot> : 650,
    <item:occultism:iesnium_nugget> : 75,
    <item:occultism:iesnium_ore_natural> : 1300,
    <item:occultism:iesnium_pickaxe> : 1775,
    <item:occultism:infused_lenses> : 15700,
    <item:occultism:infused_pickaxe> : 1325,
    <item:occultism:lens_frame> : 2350,
    <item:occultism:magic_lamp_empty> : 18025,
    <item:occultism:miner_foliot_unspecialized> : 24425,
    <item:occultism:obsidian_dust> : 25,
    <item:occultism:otherworld_goggles> : 18050,
    <item:occultism:raw_iesnium> : 650,
    <item:occultism:raw_silver> : 400,
    <item:occultism:sacrificial_bowl> : 4800,
    <item:occultism:satchel> : 5150,
    <item:occultism:silver_block> : 3150,
    <item:occultism:silver_dust> : 350,
    <item:occultism:silver_ingot> : 350,
    <item:occultism:silver_ore> : 700,
    <item:occultism:silver_ore_deepslate> : 700,
    <item:occultism:soul_gem> : 17675,
    <item:occultism:spirit_attuned_crystal> : 9500,
    <item:occultism:spirit_attuned_gem> : 125,
    <item:occultism:spirit_attuned_pickaxe_head> : 375,
    <item:occultism:storage_stabilizer_tier1> : 2975,
    <item:occultism:storage_stabilizer_tier2> : 4575,
    <item:occultism:brush> : 25,
    <item:occultism:burnt_otherstone> : 1,
    <item:occultism:butcher_knife> : 325,
    <item:occultism:copper_dust> : 100,
    <item:occultism:datura> : 5,
    <item:occultism:datura_seeds> : 5,
    <item:occultism:dictionary_of_spirits> : 10,
    <item:occultism:divination_rod> : 500,
    <item:occultism:iron_dust> : 225,
    <item:occultism:lenses> : 125,
    <item:occultism:otherstone> : 1,
    <item:occultism:otherstone_frame> : 10,
    <item:occultism:otherstone_natural> : 1,
    <item:occultism:otherstone_pedestal> : 2,
    <item:occultism:otherstone_slab> : 1,
    <item:occultism:otherstone_tablet> : 2,
    <item:occultism:otherworld_ashes> : 2,
    <item:occultism:otherworld_leaves_natural> : 1,
    <item:occultism:otherworld_log_natural> : 2,
    <item:occultism:otherworld_sapling_natural> : 5,
    <item:occultism:purified_ink> : 50,
    <item:occultism:silver_nugget> : 50,
    <item:occultism:spirit_campfire> : 10,
    <item:occultism:spirit_lantern> : 200,
    <item:occultism:spirit_torch> : 2,
    <item:occultism:tallow> : 25
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
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
}