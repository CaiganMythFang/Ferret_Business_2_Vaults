import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:auxiliaryblocks:asphalt> : 1,
    <item:auxiliaryblocks:asphalt_caution> : 1,
    <item:auxiliaryblocks:asphalt_line_center> : 1,
    <item:auxiliaryblocks:asphalt_line_edge> : 1,
    <item:auxiliaryblocks:black_crystal> : 25,
    <item:auxiliaryblocks:black_frameless_glass> : 1,
    <item:auxiliaryblocks:black_water_bucket> : 675,
    <item:auxiliaryblocks:blue_crystal> : 25,
    <item:auxiliaryblocks:blue_frameless_glass> : 1,
    <item:auxiliaryblocks:blue_gelatin> : 25,
    <item:auxiliaryblocks:blue_pastel> : 2,
    <item:auxiliaryblocks:blue_plastic> : 1,
    <item:auxiliaryblocks:blue_water_bucket> : 675,
    <item:auxiliaryblocks:brown_frameless_glass> : 1,
    <item:auxiliaryblocks:brown_water_bucket> : 675,
    <item:auxiliaryblocks:candy_cane_block> : 50,
    <item:auxiliaryblocks:candy_cane_trapdoor> : 125,
    <item:auxiliaryblocks:cobbled_sandstone> : 1,
    <item:auxiliaryblocks:concrete> : 2,
    <item:auxiliaryblocks:concrete_vent> : 2,
    <item:auxiliaryblocks:cookie_pile> : 2,
    <item:auxiliaryblocks:critter_bat> : 10,
    <item:auxiliaryblocks:critter_spider> : 10,
    <item:auxiliaryblocks:critter_spider_2> : 10,
    <item:auxiliaryblocks:cyan_frameless_glass> : 1,
    <item:auxiliaryblocks:cyan_gelatin> : 25,
    <item:auxiliaryblocks:cyan_plastic> : 1,
    <item:auxiliaryblocks:cyan_water_bucket> : 675,
    <item:auxiliaryblocks:dark_asphalt> : 1,
    <item:auxiliaryblocks:dark_asphalt_caution> : 1,
    <item:auxiliaryblocks:dark_asphalt_line_center> : 1,
    <item:auxiliaryblocks:dark_asphalt_line_edge> : 1,
    <item:auxiliaryblocks:dark_gray_plastic> : 1,
    <item:auxiliaryblocks:dark_purple_diorite> : 1,
    <item:auxiliaryblocks:dirty_sand> : 1,
    <item:auxiliaryblocks:drippy_icing_block> : 50,
    <item:auxiliaryblocks:festive_cake> : 175,
    <item:auxiliaryblocks:gingerbread_block> : 2,
    <item:auxiliaryblocks:gingerbread_candied_block> : 10,
    <item:auxiliaryblocks:gingerbread_house> : 125,
    <item:auxiliaryblocks:gingerbread_icing_block> : 5,
    <item:auxiliaryblocks:gloomy_andesite> : 1,
    <item:auxiliaryblocks:gloomy_andesite_slab> : 1,
    <item:auxiliaryblocks:gloomy_andesite_stairs> : 1,
    <item:auxiliaryblocks:gloomy_bricks> : 1,
    <item:auxiliaryblocks:gloomy_bricks_slab> : 1,
    <item:auxiliaryblocks:gloomy_bricks_stairs> : 1,
    <item:auxiliaryblocks:gloomy_bright_dust> : 1,
    <item:auxiliaryblocks:gloomy_cobblestone> : 1,
    <item:auxiliaryblocks:gloomy_cobblestone_slab> : 1,
    <item:auxiliaryblocks:gloomy_cobblestone_stairs> : 1,
    <item:auxiliaryblocks:gloomy_cracked_bricks> : 1,
    <item:auxiliaryblocks:gloomy_cracked_bricks_slab> : 1,
    <item:auxiliaryblocks:gloomy_cracked_bricks_stairs> : 1,
    <item:auxiliaryblocks:gloomy_crushed_rocks> : 1,
    <item:auxiliaryblocks:gloomy_crushed_rocks_slab> : 1,
    <item:auxiliaryblocks:gloomy_crushed_rocks_stairs> : 1,
    <item:auxiliaryblocks:gloomy_dark_andesite> : 1,
    <item:auxiliaryblocks:gloomy_dark_andesite_slab> : 1,
    <item:auxiliaryblocks:gloomy_dark_andesite_stairs> : 1,
    <item:auxiliaryblocks:gloomy_dark_cobblestone> : 1,
    <item:auxiliaryblocks:gloomy_dark_cobblestone_slab> : 1,
    <item:auxiliaryblocks:gloomy_dark_cobblestone_stairs> : 1,
    <item:auxiliaryblocks:gloomy_dark_stone> : 1,
    <item:auxiliaryblocks:gloomy_dark_stone_slab> : 1,
    <item:auxiliaryblocks:gloomy_dark_stone_stairs> : 1,
    <item:auxiliaryblocks:gloomy_dirt> : 1,
    <item:auxiliaryblocks:gloomy_dirt_slab> : 1,
    <item:auxiliaryblocks:gloomy_dirt_stairs> : 1,
    <item:auxiliaryblocks:gloomy_dust> : 1,
    <item:auxiliaryblocks:gloomy_fence> : 1,
    <item:auxiliaryblocks:gloomy_fence_gate> : 2,
    <item:auxiliaryblocks:gloomy_gravel> : 1,
    <item:auxiliaryblocks:gloomy_gravel_slab> : 1,
    <item:auxiliaryblocks:gloomy_gravel_stairs> : 1,
    <item:auxiliaryblocks:gloomy_jack_o_lantern> : 10,
    <item:auxiliaryblocks:gloomy_log> : 2,
    <item:auxiliaryblocks:gloomy_planks> : 1,
    <item:auxiliaryblocks:gloomy_slab> : 1,
    <item:auxiliaryblocks:gloomy_stairs> : 1,
    <item:auxiliaryblocks:gloomy_stone> : 1,
    <item:auxiliaryblocks:gloomy_stone_slab> : 1,
    <item:auxiliaryblocks:gloomy_stone_stairs> : 1,
    <item:auxiliaryblocks:gloomy_trapdoor> : 5,
    <item:auxiliaryblocks:gloomy_web> : 2,
    <item:auxiliaryblocks:gloomy_web_dark> : 2,
    <item:auxiliaryblocks:gloomy_weeping_vines_plant> : 5,
    <item:auxiliaryblocks:gray_frameless_glass> : 1,
    <item:auxiliaryblocks:gray_pastel> : 2,
    <item:auxiliaryblocks:gray_water_bucket> : 675,
    <item:auxiliaryblocks:green_crystal> : 25,
    <item:auxiliaryblocks:green_frameless_glass> : 1,
    <item:auxiliaryblocks:green_pastel> : 2,
    <item:auxiliaryblocks:green_plastic> : 1,
    <item:auxiliaryblocks:green_water_bucket> : 675,
    <item:auxiliaryblocks:gumdrop_green> : 25,
    <item:auxiliaryblocks:gumdrop_purple> : 25,
    <item:auxiliaryblocks:gumdrop_red> : 25,
    <item:auxiliaryblocks:indigo_crystal> : 25,
    <item:auxiliaryblocks:lab_blue> : 1,
    <item:auxiliaryblocks:lab_chrome> : 1,
    <item:auxiliaryblocks:lab_cyan> : 1,
    <item:auxiliaryblocks:lab_dark_gray> : 1,
    <item:auxiliaryblocks:lab_dark_metallic> : 1,
    <item:auxiliaryblocks:lab_gray> : 1,
    <item:auxiliaryblocks:lab_green> : 1,
    <item:auxiliaryblocks:lab_light_gray> : 1,
    <item:auxiliaryblocks:lab_light_metallic> : 1,
    <item:auxiliaryblocks:lab_metallic> : 1,
    <item:auxiliaryblocks:lab_red> : 1,
    <item:auxiliaryblocks:lab_yellow> : 1,
    <item:auxiliaryblocks:light_blue_frameless_glass> : 1,
    <item:auxiliaryblocks:light_blue_water_bucket> : 675,
    <item:auxiliaryblocks:light_gray_frameless_glass> : 1,
    <item:auxiliaryblocks:light_gray_plastic> : 1,
    <item:auxiliaryblocks:light_gray_water_bucket> : 675,
    <item:auxiliaryblocks:lime_frameless_glass> : 1,
    <item:auxiliaryblocks:lime_gelatin> : 25,
    <item:auxiliaryblocks:lime_water_bucket> : 675,
    <item:auxiliaryblocks:lollipop_blue> : 10,
    <item:auxiliaryblocks:lollipop_green> : 10,
    <item:auxiliaryblocks:lollipop_pink> : 10,
    <item:auxiliaryblocks:lollipop_stick> : 2,
    <item:auxiliaryblocks:magenta_frameless_glass> : 1,
    <item:auxiliaryblocks:magenta_gelatin> : 25,
    <item:auxiliaryblocks:magenta_water_bucket> : 675,
    <item:auxiliaryblocks:medium_pumpkin> : 10,
    <item:auxiliaryblocks:mossy_dirt> : 1,
    <item:auxiliaryblocks:mossy_stone> : 1,
    <item:auxiliaryblocks:nailed_reinforced_concrete> : 2,
    <item:auxiliaryblocks:orange_crystal> : 25,
    <item:auxiliaryblocks:orange_frameless_glass> : 1,
    <item:auxiliaryblocks:orange_gelatin> : 25,
    <item:auxiliaryblocks:orange_pastel> : 2,
    <item:auxiliaryblocks:orange_plastic> : 1,
    <item:auxiliaryblocks:orange_water_bucket> : 675,
    <item:auxiliaryblocks:ornament_blue> : 10,
    <item:auxiliaryblocks:ornament_cyan> : 10,
    <item:auxiliaryblocks:ornament_green> : 10,
    <item:auxiliaryblocks:ornament_light_blue> : 10,
    <item:auxiliaryblocks:ornament_lime> : 10,
    <item:auxiliaryblocks:ornament_magenta> : 10,
    <item:auxiliaryblocks:ornament_orange> : 10,
    <item:auxiliaryblocks:ornament_pink> : 10,
    <item:auxiliaryblocks:ornament_purple> : 10,
    <item:auxiliaryblocks:ornament_red> : 10,
    <item:auxiliaryblocks:pink_frameless_glass> : 1,
    <item:auxiliaryblocks:pink_pastel> : 2,
    <item:auxiliaryblocks:pink_water_bucket> : 675,
    <item:auxiliaryblocks:plastic> : 1,
    <item:auxiliaryblocks:plated_concrete> : 2,
    <item:auxiliaryblocks:purple_diorite> : 1,
    <item:auxiliaryblocks:purple_frameless_glass> : 1,
    <item:auxiliaryblocks:purple_gelatin> : 25,
    <item:auxiliaryblocks:purple_pastel> : 2,
    <item:auxiliaryblocks:purple_plastic> : 1,
    <item:auxiliaryblocks:purple_water_bucket> : 675,
    <item:auxiliaryblocks:red_crystal> : 25,
    <item:auxiliaryblocks:red_frameless_glass> : 1,
    <item:auxiliaryblocks:red_gelatin> : 25,
    <item:auxiliaryblocks:red_plastic> : 1,
    <item:auxiliaryblocks:red_water_bucket> : 675,
    <item:auxiliaryblocks:reinforced_concrete> : 2,
    <item:auxiliaryblocks:rocky_dirt> : 1,
    <item:auxiliaryblocks:rocky_sand> : 1,
    <item:auxiliaryblocks:rocky_stone> : 1,
    <item:auxiliaryblocks:rusty_sheet_metal> : 50,
    <item:auxiliaryblocks:rusty_sheet_metal_section> : 50,
    <item:auxiliaryblocks:rusty_trapdoor> : 50,
    <item:auxiliaryblocks:sheet_metal> : 50,
    <item:auxiliaryblocks:sheet_metal_section> : 50,
    <item:auxiliaryblocks:smooth_blue_pastel> : 2,
    <item:auxiliaryblocks:smooth_gray_pastel> : 2,
    <item:auxiliaryblocks:smooth_green_pastel> : 2,
    <item:auxiliaryblocks:smooth_orange_pastel> : 2,
    <item:auxiliaryblocks:smooth_pink_pastel> : 2,
    <item:auxiliaryblocks:smooth_purple_pastel> : 2,
    <item:auxiliaryblocks:smooth_yellow_pastel> : 2,
    <item:auxiliaryblocks:tiny_pumpkin> : 10,
    <item:auxiliaryblocks:violet_crystal> : 25,
    <item:auxiliaryblocks:white_crystal> : 25,
    <item:auxiliaryblocks:white_frameless_glass> : 1,
    <item:auxiliaryblocks:white_water_bucket> : 675,
    <item:auxiliaryblocks:yellow_crystal> : 25,
    <item:auxiliaryblocks:yellow_frameless_glass> : 1,
    <item:auxiliaryblocks:yellow_gelatin> : 25,
    <item:auxiliaryblocks:yellow_pastel> : 2,
    <item:auxiliaryblocks:yellow_water_bucket> : 675
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