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
    <item:mcwlights:garden_light> : 300,
    <item:mcwlights:glowstone_slab> : 25,
    <item:mcwlights:lava_lamp> : 300,
    <item:mcwlights:redstone_lamp_slab> : 50,
    <item:mcwlights:sea_lantern_slab> : 550,
    <item:mcwlights:shroomlight_slab> : 10,
    <item:mcwlights:soul_double_street_lamp> : 125,
    <item:mcwlights:acacia_tiki_torch> : 2,
    <item:mcwlights:bamboo_tiki_torch> : 5,
    <item:mcwlights:bell_lantern> : 125,
    <item:mcwlights:bell_wall_lantern> : 125,
    <item:mcwlights:birch_tiki_torch> : 2,
    <item:mcwlights:black_ceiling_light> : 25,
    <item:mcwlights:black_lamp> : 25,
    <item:mcwlights:black_paper_lamp> : 10,
    <item:mcwlights:blue_ceiling_light> : 25,
    <item:mcwlights:blue_lamp> : 25,
    <item:mcwlights:blue_paper_lamp> : 10,
    <item:mcwlights:brown_ceiling_light> : 25,
    <item:mcwlights:brown_lamp> : 25,
    <item:mcwlights:brown_paper_lamp> : 10,
    <item:mcwlights:chain_lantern> : 125,
    <item:mcwlights:chain_wall_lantern> : 125,
    <item:mcwlights:classic_street_lamp> : 75,
    <item:mcwlights:covered_lantern> : 150,
    <item:mcwlights:covered_wall_lantern> : 150,
    <item:mcwlights:crimson_tiki_torch> : 2,
    <item:mcwlights:cross_lantern> : 100,
    <item:mcwlights:cross_wall_lantern> : 100,
    <item:mcwlights:cyan_ceiling_light> : 25,
    <item:mcwlights:cyan_lamp> : 25,
    <item:mcwlights:cyan_paper_lamp> : 10,
    <item:mcwlights:dark_oak_tiki_torch> : 2,
    <item:mcwlights:double_street_lamp> : 125,
    <item:mcwlights:festive_lantern> : 150,
    <item:mcwlights:festive_wall_lantern> : 150,
    <item:mcwlights:framed_torch> : 25,
    <item:mcwlights:gray_ceiling_light> : 25,
    <item:mcwlights:gray_lamp> : 25,
    <item:mcwlights:gray_paper_lamp> : 10,
    <item:mcwlights:green_ceiling_light> : 25,
    <item:mcwlights:green_lamp> : 25,
    <item:mcwlights:green_paper_lamp> : 10,
    <item:mcwlights:iron_framed_torch> : 25,
    <item:mcwlights:jungle_tiki_torch> : 2,
    <item:mcwlights:light_blue_ceiling_light> : 25,
    <item:mcwlights:light_blue_lamp> : 25,
    <item:mcwlights:light_blue_paper_lamp> : 10,
    <item:mcwlights:light_gray_ceiling_light> : 25,
    <item:mcwlights:light_gray_lamp> : 25,
    <item:mcwlights:light_gray_paper_lamp> : 10,
    <item:mcwlights:lime_ceiling_light> : 25,
    <item:mcwlights:lime_lamp> : 25,
    <item:mcwlights:lime_paper_lamp> : 10,
    <item:mcwlights:magenta_ceiling_light> : 25,
    <item:mcwlights:magenta_lamp> : 25,
    <item:mcwlights:magenta_paper_lamp> : 10,
    <item:mcwlights:oak_tiki_torch> : 2,
    <item:mcwlights:orange_ceiling_light> : 25,
    <item:mcwlights:orange_lamp> : 25,
    <item:mcwlights:orange_paper_lamp> : 10,
    <item:mcwlights:pink_ceiling_light> : 25,
    <item:mcwlights:pink_lamp> : 25,
    <item:mcwlights:pink_paper_lamp> : 10,
    <item:mcwlights:purple_ceiling_light> : 25,
    <item:mcwlights:purple_lamp> : 25,
    <item:mcwlights:purple_paper_lamp> : 10,
    <item:mcwlights:red_ceiling_light> : 25,
    <item:mcwlights:red_lamp> : 25,
    <item:mcwlights:red_paper_lamp> : 10,
    <item:mcwlights:reinforced_torch> : 10,
    <item:mcwlights:rustic_torch> : 5,
    <item:mcwlights:soul_acacia_tiki_torch> : 10,
    <item:mcwlights:soul_bamboo_tiki_torch> : 10,
    <item:mcwlights:soul_birch_tiki_torch> : 10,
    <item:mcwlights:soul_classic_street_lamp> : 10,
    <item:mcwlights:soul_crimson_tiki_torch> : 10,
    <item:mcwlights:soul_dark_oak_tiki_torch> : 10,
    <item:mcwlights:soul_jungle_tiki_torch> : 10,
    <item:mcwlights:soul_oak_tiki_torch> : 10,
    <item:mcwlights:soul_spruce_tiki_torch> : 10,
    <item:mcwlights:soul_warped_tiki_torch> : 10,
    <item:mcwlights:spruce_tiki_torch> : 2,
    <item:mcwlights:square_wall_lamp> : 25,
    <item:mcwlights:striped_lantern> : 50,
    <item:mcwlights:striped_wall_lantern> : 50,
    <item:mcwlights:tavern_lantern> : 100,
    <item:mcwlights:tavern_wall_lantern> : 100,
    <item:mcwlights:upgraded_torch> : 10,
    <item:mcwlights:wall_lamp> : 50,
    <item:mcwlights:wall_lantern> : 200,
    <item:mcwlights:warped_tiki_torch> : 2,
    <item:mcwlights:white_ceiling_light> : 25,
    <item:mcwlights:white_lamp> : 25,
    <item:mcwlights:white_paper_lamp> : 10,
    <item:mcwlights:yellow_ceiling_light> : 25,
    <item:mcwlights:yellow_lamp> : 25,
    <item:mcwlights:yellow_paper_lamp> : 10
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