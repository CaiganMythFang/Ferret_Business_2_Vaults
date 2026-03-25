import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:mcwwindows:dark_prismarine_brick_arrow_slit> : 50,
    <item:mcwwindows:dark_prismarine_brick_gothic> : 25,
    <item:mcwwindows:dark_prismarine_four_window> : 5,
    <item:mcwwindows:dark_prismarine_pane_window> : 5,
    <item:mcwwindows:dark_prismarine_parapet> : 5,
    <item:mcwwindows:dark_prismarine_window> : 5,
    <item:mcwwindows:dark_prismarine_window2> : 5,
    <item:mcwwindows:acacia_blinds> : 2,
    <item:mcwwindows:acacia_four_window> : 2,
    <item:mcwwindows:acacia_log_parapet> : 1,
    <item:mcwwindows:acacia_louvered_shutter> : 1,
    <item:mcwwindows:acacia_pane_window> : 2,
    <item:mcwwindows:acacia_plank_four_window> : 2,
    <item:mcwwindows:acacia_plank_pane_window> : 2,
    <item:mcwwindows:acacia_plank_parapet> : 1,
    <item:mcwwindows:acacia_plank_window> : 2,
    <item:mcwwindows:acacia_plank_window2> : 2,
    <item:mcwwindows:acacia_shutter> : 1,
    <item:mcwwindows:acacia_window> : 2,
    <item:mcwwindows:acacia_window2> : 2,
    <item:mcwwindows:andesite_four_window> : 2,
    <item:mcwwindows:andesite_louvered_shutter> : 1,
    <item:mcwwindows:andesite_pane_window> : 2,
    <item:mcwwindows:andesite_parapet> : 1,
    <item:mcwwindows:andesite_window> : 2,
    <item:mcwwindows:andesite_window2> : 2,
    <item:mcwwindows:bamboo_shutter> : 10,
    <item:mcwwindows:birch_blinds> : 2,
    <item:mcwwindows:birch_four_window> : 2,
    <item:mcwwindows:birch_log_parapet> : 1,
    <item:mcwwindows:birch_louvered_shutter> : 1,
    <item:mcwwindows:birch_pane_window> : 2,
    <item:mcwwindows:birch_plank_four_window> : 2,
    <item:mcwwindows:birch_plank_pane_window> : 2,
    <item:mcwwindows:birch_plank_parapet> : 1,
    <item:mcwwindows:birch_plank_window> : 2,
    <item:mcwwindows:birch_plank_window2> : 2,
    <item:mcwwindows:birch_shutter> : 1,
    <item:mcwwindows:birch_window> : 2,
    <item:mcwwindows:birch_window2> : 2,
    <item:mcwwindows:black_curtain> : 5,
    <item:mcwwindows:black_mosaic_glass> : 1,
    <item:mcwwindows:black_mosaic_glass_pane> : 1,
    <item:mcwwindows:blackstone_brick_arrow_slit> : 2,
    <item:mcwwindows:blackstone_brick_gothic> : 1,
    <item:mcwwindows:blackstone_four_window> : 2,
    <item:mcwwindows:blackstone_pane_window> : 2,
    <item:mcwwindows:blackstone_parapet> : 1,
    <item:mcwwindows:blackstone_window> : 2,
    <item:mcwwindows:blackstone_window2> : 2,
    <item:mcwwindows:blue_curtain> : 5,
    <item:mcwwindows:blue_mosaic_glass> : 1,
    <item:mcwwindows:blue_mosaic_glass_pane> : 1,
    <item:mcwwindows:brown_curtain> : 5,
    <item:mcwwindows:brown_mosaic_glass> : 1,
    <item:mcwwindows:brown_mosaic_glass_pane> : 1,
    <item:mcwwindows:cobblestone_arrow_slit> : 2,
    <item:mcwwindows:crimson_blinds> : 2,
    <item:mcwwindows:crimson_louvered_shutter> : 2,
    <item:mcwwindows:crimson_pane_window> : 1,
    <item:mcwwindows:crimson_plank_pane_window> : 1,
    <item:mcwwindows:crimson_plank_parapet> : 2,
    <item:mcwwindows:crimson_planks_four_window> : 2,
    <item:mcwwindows:crimson_planks_window> : 2,
    <item:mcwwindows:crimson_planks_window2> : 1,
    <item:mcwwindows:crimson_shutter> : 2,
    <item:mcwwindows:crimson_stem_four_window> : 2,
    <item:mcwwindows:crimson_stem_parapet> : 1,
    <item:mcwwindows:crimson_stem_window> : 2,
    <item:mcwwindows:crimson_stem_window2> : 2,
    <item:mcwwindows:cyan_curtain> : 5,
    <item:mcwwindows:cyan_mosaic_glass> : 1,
    <item:mcwwindows:cyan_mosaic_glass_pane> : 1,
    <item:mcwwindows:dark_oak_blinds> : 2,
    <item:mcwwindows:dark_oak_four_window> : 2,
    <item:mcwwindows:dark_oak_log_parapet> : 1,
    <item:mcwwindows:dark_oak_louvered_shutter> : 1,
    <item:mcwwindows:dark_oak_pane_window> : 2,
    <item:mcwwindows:dark_oak_plank_four_window> : 2,
    <item:mcwwindows:dark_oak_plank_pane_window> : 2,
    <item:mcwwindows:dark_oak_plank_parapet> : 1,
    <item:mcwwindows:dark_oak_plank_window> : 2,
    <item:mcwwindows:dark_oak_plank_window2> : 2,
    <item:mcwwindows:dark_oak_shutter> : 1,
    <item:mcwwindows:dark_oak_window> : 2,
    <item:mcwwindows:dark_oak_window2> : 2,
    <item:mcwwindows:diorite_four_window> : 2,
    <item:mcwwindows:diorite_louvered_shutter> : 1,
    <item:mcwwindows:diorite_pane_window> : 2,
    <item:mcwwindows:diorite_parapet> : 1,
    <item:mcwwindows:diorite_window> : 2,
    <item:mcwwindows:diorite_window2> : 2,
    <item:mcwwindows:end_brick_gothic> : 1,
    <item:mcwwindows:ender_brick_arrow_slit> : 1,
    <item:mcwwindows:granite_four_window> : 2,
    <item:mcwwindows:granite_louvered_shutter> : 1,
    <item:mcwwindows:granite_pane_window> : 2,
    <item:mcwwindows:granite_parapet> : 1,
    <item:mcwwindows:granite_window> : 2,
    <item:mcwwindows:granite_window2> : 2,
    <item:mcwwindows:gray_curtain> : 5,
    <item:mcwwindows:gray_mosaic_glass> : 1,
    <item:mcwwindows:gray_mosaic_glass_pane> : 1,
    <item:mcwwindows:green_curtain> : 5,
    <item:mcwwindows:green_mosaic_glass> : 1,
    <item:mcwwindows:green_mosaic_glass_pane> : 1,
    <item:mcwwindows:hammer> : 250,
    <item:mcwwindows:iron_shutter> : 900,
    <item:mcwwindows:jungle_blinds> : 2,
    <item:mcwwindows:jungle_four_window> : 2,
    <item:mcwwindows:jungle_log_parapet> : 1,
    <item:mcwwindows:jungle_louvered_shutter> : 1,
    <item:mcwwindows:jungle_pane_window> : 2,
    <item:mcwwindows:jungle_plank_four_window> : 2,
    <item:mcwwindows:jungle_plank_pane_window> : 2,
    <item:mcwwindows:jungle_plank_parapet> : 1,
    <item:mcwwindows:jungle_plank_window> : 2,
    <item:mcwwindows:jungle_plank_window2> : 2,
    <item:mcwwindows:jungle_shutter> : 1,
    <item:mcwwindows:jungle_window> : 2,
    <item:mcwwindows:jungle_window2> : 2,
    <item:mcwwindows:key> : 50,
    <item:mcwwindows:light_blue_curtain> : 5,
    <item:mcwwindows:light_blue_mosaic_glass> : 1,
    <item:mcwwindows:light_blue_mosaic_glass_pane> : 1,
    <item:mcwwindows:light_gray_curtain> : 5,
    <item:mcwwindows:light_gray_mosaic_glass> : 1,
    <item:mcwwindows:light_gray_mosaic_glass_pane> : 1,
    <item:mcwwindows:lime_curtain> : 5,
    <item:mcwwindows:lime_mosaic_glass> : 1,
    <item:mcwwindows:lime_mosaic_glass_pane> : 1,
    <item:mcwwindows:magenta_curtain> : 5,
    <item:mcwwindows:magenta_mosaic_glass> : 1,
    <item:mcwwindows:magenta_mosaic_glass_pane> : 1,
    <item:mcwwindows:nether_brick_arrow_slit> : 2,
    <item:mcwwindows:nether_brick_gothic> : 1,
    <item:mcwwindows:oak_blinds> : 2,
    <item:mcwwindows:oak_four_window> : 2,
    <item:mcwwindows:oak_log_parapet> : 1,
    <item:mcwwindows:oak_louvered_shutter> : 1,
    <item:mcwwindows:oak_pane_window> : 2,
    <item:mcwwindows:oak_plank_four_window> : 2,
    <item:mcwwindows:oak_plank_pane_window> : 2,
    <item:mcwwindows:oak_plank_parapet> : 1,
    <item:mcwwindows:oak_plank_window> : 2,
    <item:mcwwindows:oak_plank_window2> : 2,
    <item:mcwwindows:oak_shutter> : 1,
    <item:mcwwindows:oak_window> : 2,
    <item:mcwwindows:oak_window2> : 2,
    <item:mcwwindows:one_way_glass> : 2,
    <item:mcwwindows:one_way_glass_pane> : 1,
    <item:mcwwindows:orange_curtain> : 5,
    <item:mcwwindows:orange_mosaic_glass> : 1,
    <item:mcwwindows:orange_mosaic_glass_pane> : 1,
    <item:mcwwindows:pink_curtain> : 5,
    <item:mcwwindows:pink_mosaic_glass> : 1,
    <item:mcwwindows:pink_mosaic_glass_pane> : 1,
    <item:mcwwindows:prismarine_brick_arrow_slit> : 10,
    <item:mcwwindows:prismarine_brick_gothic> : 25,
    <item:mcwwindows:prismarine_four_window> : 2,
    <item:mcwwindows:prismarine_pane_window> : 2,
    <item:mcwwindows:prismarine_parapet> : 2,
    <item:mcwwindows:prismarine_window> : 2,
    <item:mcwwindows:prismarine_window2> : 2,
    <item:mcwwindows:purple_curtain> : 5,
    <item:mcwwindows:purple_mosaic_glass> : 1,
    <item:mcwwindows:purple_mosaic_glass_pane> : 1,
    <item:mcwwindows:red_curtain> : 5,
    <item:mcwwindows:red_mosaic_glass> : 1,
    <item:mcwwindows:red_mosaic_glass_pane> : 1,
    <item:mcwwindows:spruce_blinds> : 2,
    <item:mcwwindows:spruce_four_window> : 2,
    <item:mcwwindows:spruce_log_parapet> : 1,
    <item:mcwwindows:spruce_louvered_shutter> : 1,
    <item:mcwwindows:spruce_pane_window> : 2,
    <item:mcwwindows:spruce_plank_four_window> : 2,
    <item:mcwwindows:spruce_plank_pane_window> : 2,
    <item:mcwwindows:spruce_plank_parapet> : 1,
    <item:mcwwindows:spruce_plank_window> : 2,
    <item:mcwwindows:spruce_plank_window2> : 2,
    <item:mcwwindows:spruce_shutter> : 1,
    <item:mcwwindows:spruce_window> : 2,
    <item:mcwwindows:spruce_window2> : 2,
    <item:mcwwindows:stone_brick_arrow_slit> : 2,
    <item:mcwwindows:stone_brick_gothic> : 1,
    <item:mcwwindows:stone_four_window> : 2,
    <item:mcwwindows:stone_pane_window> : 2,
    <item:mcwwindows:stone_window> : 2,
    <item:mcwwindows:stone_window2> : 2,
    <item:mcwwindows:stripped_acacia_log_four_window> : 2,
    <item:mcwwindows:stripped_acacia_log_window> : 2,
    <item:mcwwindows:stripped_acacia_log_window2> : 2,
    <item:mcwwindows:stripped_acacia_pane_window> : 2,
    <item:mcwwindows:stripped_birch_log_four_window> : 2,
    <item:mcwwindows:stripped_birch_log_window> : 2,
    <item:mcwwindows:stripped_birch_log_window2> : 2,
    <item:mcwwindows:stripped_birch_pane_window> : 2,
    <item:mcwwindows:stripped_crimson_pane_window> : 2,
    <item:mcwwindows:stripped_crimson_stem_four_window> : 2,
    <item:mcwwindows:stripped_crimson_stem_window> : 2,
    <item:mcwwindows:stripped_crimson_stem_window2> : 2,
    <item:mcwwindows:stripped_dark_oak_log_four_window> : 2,
    <item:mcwwindows:stripped_dark_oak_log_window> : 2,
    <item:mcwwindows:stripped_dark_oak_log_window2> : 2,
    <item:mcwwindows:stripped_dark_oak_pane_window> : 2,
    <item:mcwwindows:stripped_jungle_log_four_window> : 2,
    <item:mcwwindows:stripped_jungle_log_window> : 2,
    <item:mcwwindows:stripped_jungle_log_window2> : 2,
    <item:mcwwindows:stripped_jungle_pane_window> : 2,
    <item:mcwwindows:stripped_oak_log_four_window> : 2,
    <item:mcwwindows:stripped_oak_log_window> : 2,
    <item:mcwwindows:stripped_oak_log_window2> : 2,
    <item:mcwwindows:stripped_oak_pane_window> : 2,
    <item:mcwwindows:stripped_spruce_log_four_window> : 2,
    <item:mcwwindows:stripped_spruce_log_window> : 2,
    <item:mcwwindows:stripped_spruce_log_window2> : 2,
    <item:mcwwindows:stripped_spruce_pane_window> : 2,
    <item:mcwwindows:stripped_warped_pane_window> : 2,
    <item:mcwwindows:stripped_warped_stem_four_window> : 2,
    <item:mcwwindows:stripped_warped_stem_window> : 2,
    <item:mcwwindows:stripped_warped_stem_window2> : 2,
    <item:mcwwindows:warped_blinds> : 2,
    <item:mcwwindows:warped_louvered_shutter> : 2,
    <item:mcwwindows:warped_pane_window> : 1,
    <item:mcwwindows:warped_plank_pane_window> : 1,
    <item:mcwwindows:warped_plank_parapet> : 2,
    <item:mcwwindows:warped_planks_four_window> : 2,
    <item:mcwwindows:warped_planks_window> : 2,
    <item:mcwwindows:warped_planks_window2> : 1,
    <item:mcwwindows:warped_shutter> : 2,
    <item:mcwwindows:warped_stem_four_window> : 2,
    <item:mcwwindows:warped_stem_parapet> : 1,
    <item:mcwwindows:warped_stem_window> : 2,
    <item:mcwwindows:warped_stem_window2> : 2,
    <item:mcwwindows:white_curtain> : 5,
    <item:mcwwindows:white_mosaic_glass> : 1,
    <item:mcwwindows:white_mosaic_glass_pane> : 1,
    <item:mcwwindows:window_base> : 2,
    <item:mcwwindows:window_centre_bar_base> : 2,
    <item:mcwwindows:window_half_bar_base> : 2,
    <item:mcwwindows:yellow_curtain> : 5,
    <item:mcwwindows:yellow_mosaic_glass> : 1,
    <item:mcwwindows:yellow_mosaic_glass_pane> : 1
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