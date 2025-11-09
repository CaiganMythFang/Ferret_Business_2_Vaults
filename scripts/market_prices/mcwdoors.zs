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
    <item:mcwdoors:garage_black_door> : 375,
    <item:mcwdoors:garage_gray_door> : 375,
    <item:mcwdoors:garage_silver_door> : 375,
    <item:mcwdoors:garage_white_door> : 375,
    <item:mcwdoors:iron_portcullis> : 300,
    <item:mcwdoors:jail_door> : 450,
    <item:mcwdoors:metal_door> : 575,
    <item:mcwdoors:metal_hospital_door> : 375,
    <item:mcwdoors:metal_reinforced_door> : 775,
    <item:mcwdoors:metal_warning_door> : 625,
    <item:mcwdoors:metal_windowed_door> : 575,
    <item:mcwdoors:sliding_glass_door> : 350,
    <item:mcwdoors:store_door> : 450,
    <item:mcwdoors:acacia_bamboo_door> : 5,
    <item:mcwdoors:acacia_bark_glass_door> : 2,
    <item:mcwdoors:acacia_barn_door> : 2,
    <item:mcwdoors:acacia_barn_glass_door> : 2,
    <item:mcwdoors:acacia_beach_door> : 2,
    <item:mcwdoors:acacia_classic_door> : 2,
    <item:mcwdoors:acacia_cottage_door> : 2,
    <item:mcwdoors:acacia_four_panel_door> : 2,
    <item:mcwdoors:acacia_glass_door> : 2,
    <item:mcwdoors:acacia_japanese_door> : 2,
    <item:mcwdoors:acacia_japanese2_door> : 2,
    <item:mcwdoors:acacia_modern_door> : 2,
    <item:mcwdoors:acacia_mystic_door> : 2,
    <item:mcwdoors:acacia_nether_door> : 2,
    <item:mcwdoors:acacia_paper_door> : 5,
    <item:mcwdoors:acacia_stable_door> : 50,
    <item:mcwdoors:acacia_stable_head_door> : 50,
    <item:mcwdoors:acacia_swamp_door> : 5,
    <item:mcwdoors:acacia_waffle_door> : 5,
    <item:mcwdoors:acacia_western_door> : 2,
    <item:mcwdoors:bamboo_bark_glass_door> : 10,
    <item:mcwdoors:bamboo_barn_door> : 25,
    <item:mcwdoors:bamboo_barn_glass_door> : 25,
    <item:mcwdoors:bamboo_beach_door> : 10,
    <item:mcwdoors:bamboo_classic_door> : 10,
    <item:mcwdoors:bamboo_cottage_door> : 10,
    <item:mcwdoors:bamboo_four_panel_door> : 10,
    <item:mcwdoors:bamboo_glass_door> : 25,
    <item:mcwdoors:bamboo_japanese_door> : 25,
    <item:mcwdoors:bamboo_japanese2_door> : 10,
    <item:mcwdoors:bamboo_modern_door> : 25,
    <item:mcwdoors:bamboo_mystic_door> : 10,
    <item:mcwdoors:bamboo_nether_door> : 10,
    <item:mcwdoors:bamboo_paper_door> : 10,
    <item:mcwdoors:bamboo_stable_door> : 175,
    <item:mcwdoors:bamboo_stable_head_door> : 175,
    <item:mcwdoors:bamboo_swamp_door> : 10,
    <item:mcwdoors:bamboo_tropical_door> : 10,
    <item:mcwdoors:bamboo_waffle_door> : 10,
    <item:mcwdoors:bamboo_western_door> : 25,
    <item:mcwdoors:birch_bamboo_door> : 5,
    <item:mcwdoors:birch_bark_glass_door> : 2,
    <item:mcwdoors:birch_barn_door> : 2,
    <item:mcwdoors:birch_barn_glass_door> : 2,
    <item:mcwdoors:birch_beach_door> : 2,
    <item:mcwdoors:birch_classic_door> : 2,
    <item:mcwdoors:birch_cottage_door> : 2,
    <item:mcwdoors:birch_four_panel_door> : 2,
    <item:mcwdoors:birch_glass_door> : 2,
    <item:mcwdoors:birch_japanese_door> : 2,
    <item:mcwdoors:birch_japanese2_door> : 2,
    <item:mcwdoors:birch_modern_door> : 2,
    <item:mcwdoors:birch_mystic_door> : 2,
    <item:mcwdoors:birch_nether_door> : 2,
    <item:mcwdoors:birch_stable_door> : 50,
    <item:mcwdoors:birch_stable_head_door> : 50,
    <item:mcwdoors:birch_swamp_door> : 5,
    <item:mcwdoors:birch_tropical_door> : 2,
    <item:mcwdoors:birch_waffle_door> : 5,
    <item:mcwdoors:birch_western_door> : 2,
    <item:mcwdoors:crimson_bamboo_door> : 5,
    <item:mcwdoors:crimson_barn_door> : 2,
    <item:mcwdoors:crimson_barn_glass_door> : 2,
    <item:mcwdoors:crimson_beach_door> : 2,
    <item:mcwdoors:crimson_classic_door> : 2,
    <item:mcwdoors:crimson_cottage_door> : 2,
    <item:mcwdoors:crimson_four_panel_door> : 2,
    <item:mcwdoors:crimson_glass_door> : 2,
    <item:mcwdoors:crimson_japanese_door> : 2,
    <item:mcwdoors:crimson_japanese2_door> : 2,
    <item:mcwdoors:crimson_modern_door> : 2,
    <item:mcwdoors:crimson_mystic_door> : 2,
    <item:mcwdoors:crimson_paper_door> : 2,
    <item:mcwdoors:crimson_stable_door> : 2,
    <item:mcwdoors:crimson_stable_head_door> : 50,
    <item:mcwdoors:crimson_stem_glass_door> : 50,
    <item:mcwdoors:crimson_swamp_door> : 5,
    <item:mcwdoors:crimson_tropical_door> : 2,
    <item:mcwdoors:crimson_waffle_door> : 5,
    <item:mcwdoors:crimson_western_door> : 2,
    <item:mcwdoors:dark_oak_bamboo_door> : 5,
    <item:mcwdoors:dark_oak_bark_glass_door> : 2,
    <item:mcwdoors:dark_oak_barn_door> : 2,
    <item:mcwdoors:dark_oak_barn_glass_door> : 2,
    <item:mcwdoors:dark_oak_beach_door> : 2,
    <item:mcwdoors:dark_oak_classic_door> : 2,
    <item:mcwdoors:dark_oak_cottage_door> : 2,
    <item:mcwdoors:dark_oak_glass_door> : 2,
    <item:mcwdoors:dark_oak_japanese_door> : 2,
    <item:mcwdoors:dark_oak_japanese2_door> : 2,
    <item:mcwdoors:dark_oak_modern_door> : 2,
    <item:mcwdoors:dark_oak_mystic_door> : 2,
    <item:mcwdoors:dark_oak_nether_door> : 2,
    <item:mcwdoors:dark_oak_paper_door> : 2,
    <item:mcwdoors:dark_oak_stable_door> : 50,
    <item:mcwdoors:dark_oak_stable_head_door> : 50,
    <item:mcwdoors:dark_oak_swamp_door> : 5,
    <item:mcwdoors:dark_oak_tropical_door> : 2,
    <item:mcwdoors:dark_oak_waffle_door> : 5,
    <item:mcwdoors:dark_oak_western_door> : 2,
    <item:mcwdoors:jungle_bamboo_door> : 5,
    <item:mcwdoors:jungle_bark_glass_door> : 2,
    <item:mcwdoors:jungle_barn_door> : 2,
    <item:mcwdoors:jungle_barn_glass_door> : 2,
    <item:mcwdoors:jungle_classic_door> : 2,
    <item:mcwdoors:jungle_cottage_door> : 2,
    <item:mcwdoors:jungle_four_panel_door> : 2,
    <item:mcwdoors:jungle_glass_door> : 2,
    <item:mcwdoors:jungle_japanese_door> : 2,
    <item:mcwdoors:jungle_japanese2_door> : 2,
    <item:mcwdoors:jungle_modern_door> : 2,
    <item:mcwdoors:jungle_mystic_door> : 2,
    <item:mcwdoors:jungle_nether_door> : 2,
    <item:mcwdoors:jungle_paper_door> : 2,
    <item:mcwdoors:jungle_stable_door> : 50,
    <item:mcwdoors:jungle_stable_head_door> : 50,
    <item:mcwdoors:jungle_swamp_door> : 5,
    <item:mcwdoors:jungle_tropical_door> : 2,
    <item:mcwdoors:jungle_waffle_door> : 5,
    <item:mcwdoors:jungle_western_door> : 2,
    <item:mcwdoors:oak_bamboo_door> : 5,
    <item:mcwdoors:oak_bark_glass_door> : 2,
    <item:mcwdoors:oak_barn_door> : 2,
    <item:mcwdoors:oak_barn_glass_door> : 2,
    <item:mcwdoors:oak_beach_door> : 2,
    <item:mcwdoors:oak_cottage_door> : 2,
    <item:mcwdoors:oak_four_panel_door> : 2,
    <item:mcwdoors:oak_glass_door> : 2,
    <item:mcwdoors:oak_japanese_door> : 2,
    <item:mcwdoors:oak_japanese2_door> : 2,
    <item:mcwdoors:oak_modern_door> : 2,
    <item:mcwdoors:oak_mystic_door> : 2,
    <item:mcwdoors:oak_nether_door> : 2,
    <item:mcwdoors:oak_paper_door> : 2,
    <item:mcwdoors:oak_stable_door> : 50,
    <item:mcwdoors:oak_stable_head_door> : 50,
    <item:mcwdoors:oak_swamp_door> : 5,
    <item:mcwdoors:oak_tropical_door> : 2,
    <item:mcwdoors:oak_waffle_door> : 5,
    <item:mcwdoors:oak_western_door> : 2,
    <item:mcwdoors:print_acacia> : 1,
    <item:mcwdoors:print_bamboo> : 2,
    <item:mcwdoors:print_birch> : 2,
    <item:mcwdoors:print_dark_oak> : 1,
    <item:mcwdoors:print_jungle> : 1,
    <item:mcwdoors:print_mystic> : 1,
    <item:mcwdoors:print_nether> : 1,
    <item:mcwdoors:print_oak> : 1,
    <item:mcwdoors:print_spruce> : 1,
    <item:mcwdoors:print_swamp> : 2,
    <item:mcwdoors:print_waffle> : 2,
    <item:mcwdoors:spruce_bamboo_door> : 5,
    <item:mcwdoors:spruce_bark_glass_door> : 2,
    <item:mcwdoors:spruce_barn_door> : 2,
    <item:mcwdoors:spruce_barn_glass_door> : 2,
    <item:mcwdoors:spruce_beach_door> : 2,
    <item:mcwdoors:spruce_classic_door> : 2,
    <item:mcwdoors:spruce_four_panel_door> : 2,
    <item:mcwdoors:spruce_glass_door> : 2,
    <item:mcwdoors:spruce_japanese_door> : 2,
    <item:mcwdoors:spruce_japanese2_door> : 2,
    <item:mcwdoors:spruce_modern_door> : 2,
    <item:mcwdoors:spruce_mystic_door> : 2,
    <item:mcwdoors:spruce_nether_door> : 2,
    <item:mcwdoors:spruce_paper_door> : 2,
    <item:mcwdoors:spruce_stable_door> : 50,
    <item:mcwdoors:spruce_stable_head_door> : 50,
    <item:mcwdoors:spruce_swamp_door> : 5,
    <item:mcwdoors:spruce_tropical_door> : 2,
    <item:mcwdoors:spruce_waffle_door> : 5,
    <item:mcwdoors:spruce_western_door> : 2,
    <item:mcwdoors:warped_bamboo_door> : 5,
    <item:mcwdoors:warped_barn_door> : 2,
    <item:mcwdoors:warped_barn_glass_door> : 2,
    <item:mcwdoors:warped_beach_door> : 2,
    <item:mcwdoors:warped_classic_door> : 2,
    <item:mcwdoors:warped_cottage_door> : 2,
    <item:mcwdoors:warped_four_panel_door> : 2,
    <item:mcwdoors:warped_glass_door> : 2,
    <item:mcwdoors:warped_japanese_door> : 2,
    <item:mcwdoors:warped_japanese2_door> : 2,
    <item:mcwdoors:warped_modern_door> : 2,
    <item:mcwdoors:warped_nether_door> : 2,
    <item:mcwdoors:warped_paper_door> : 2,
    <item:mcwdoors:warped_stable_door> : 2,
    <item:mcwdoors:warped_stable_head_door> : 50,
    <item:mcwdoors:warped_stem_glass_door> : 50,
    <item:mcwdoors:warped_swamp_door> : 5,
    <item:mcwdoors:warped_tropical_door> : 2,
    <item:mcwdoors:warped_waffle_door> : 5,
    <item:mcwdoors:warped_western_door> : 2,
    <item:mcwdoors:wooden_portcullis> : 225
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