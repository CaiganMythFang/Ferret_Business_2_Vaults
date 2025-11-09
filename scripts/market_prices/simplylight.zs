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
    <item:simplylight:edge_light> : 50,
    <item:simplylight:edge_light_top> : 50,
    <item:simplylight:illuminant_black_block> : 75,
    <item:simplylight:illuminant_black_block_on> : 75,
    <item:simplylight:illuminant_block> : 75,
    <item:simplylight:illuminant_block_on> : 75,
    <item:simplylight:illuminant_blue_block> : 75,
    <item:simplylight:illuminant_blue_block_on> : 75,
    <item:simplylight:illuminant_brown_block> : 75,
    <item:simplylight:illuminant_brown_block_on> : 75,
    <item:simplylight:illuminant_cyan_block> : 75,
    <item:simplylight:illuminant_cyan_block_on> : 75,
    <item:simplylight:illuminant_gray_block> : 75,
    <item:simplylight:illuminant_gray_block_on> : 75,
    <item:simplylight:illuminant_green_block> : 75,
    <item:simplylight:illuminant_green_block_on> : 75,
    <item:simplylight:illuminant_light_blue_block> : 75,
    <item:simplylight:illuminant_light_blue_block_on> : 75,
    <item:simplylight:illuminant_light_gray_block> : 75,
    <item:simplylight:illuminant_light_gray_block_on> : 75,
    <item:simplylight:illuminant_lime_block> : 75,
    <item:simplylight:illuminant_lime_block_on> : 75,
    <item:simplylight:illuminant_magenta_block> : 75,
    <item:simplylight:illuminant_magenta_block_on> : 75,
    <item:simplylight:illuminant_orange_block> : 75,
    <item:simplylight:illuminant_orange_block_on> : 75,
    <item:simplylight:illuminant_panel> : 25,
    <item:simplylight:illuminant_pink_block> : 75,
    <item:simplylight:illuminant_pink_block_on> : 75,
    <item:simplylight:illuminant_purple_block> : 75,
    <item:simplylight:illuminant_purple_block_on> : 75,
    <item:simplylight:illuminant_red_block> : 75,
    <item:simplylight:illuminant_red_block_on> : 75,
    <item:simplylight:illuminant_slab> : 50,
    <item:simplylight:illuminant_yellow_block> : 75,
    <item:simplylight:illuminant_yellow_block_on> : 75,
    <item:simplylight:lamp_post> : 50,
    <item:simplylight:lightbulb> : 10,
    <item:simplylight:rodlamp> : 5,
    <item:simplylight:wall_lamp> : 25
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
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
}