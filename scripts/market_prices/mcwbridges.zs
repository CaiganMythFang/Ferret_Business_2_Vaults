import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:mcwbridges:acacia_bridge_pier> : 1,
    <item:mcwbridges:acacia_log_bridge_middle> : 1,
    <item:mcwbridges:acacia_log_bridge_stair> : 1,
    <item:mcwbridges:acacia_rail_bridge> : 1,
    <item:mcwbridges:acacia_rope_bridge_stair> : 1,
    <item:mcwbridges:bamboo_bridge> : 25,
    <item:mcwbridges:bamboo_bridge_pier> : 25,
    <item:mcwbridges:bamboo_bridge_stair> : 25,
    <item:mcwbridges:birch_bridge_pier> : 1,
    <item:mcwbridges:birch_log_bridge_middle> : 1,
    <item:mcwbridges:birch_log_bridge_stair> : 1,
    <item:mcwbridges:birch_rail_bridge> : 1,
    <item:mcwbridges:birch_rope_bridge_stair> : 1,
    <item:mcwbridges:blackstone_bridge> : 1,
    <item:mcwbridges:blackstone_bridge_pier> : 1,
    <item:mcwbridges:blackstone_bridge_stair> : 1,
    <item:mcwbridges:brick_bridge> : 5,
    <item:mcwbridges:brick_bridge_pier> : 25,
    <item:mcwbridges:brick_bridge_stair> : 5,
    <item:mcwbridges:crimson_bridge_pier> : 1,
    <item:mcwbridges:crimson_log_bridge_middle> : 1,
    <item:mcwbridges:crimson_log_bridge_stair> : 1,
    <item:mcwbridges:crimson_rail_bridge> : 1,
    <item:mcwbridges:crimson_rope_bridge_stair> : 1,
    <item:mcwbridges:dark_oak_bridge_pier> : 1,
    <item:mcwbridges:dark_oak_log_bridge_middle> : 1,
    <item:mcwbridges:dark_oak_log_bridge_stair> : 1,
    <item:mcwbridges:dark_oak_rail_bridge> : 1,
    <item:mcwbridges:dark_oak_rope_bridge_stair> : 1,
    <item:mcwbridges:deepslate_brick_bridge> : 1,
    <item:mcwbridges:deepslate_brick_bridge_pier> : 1,
    <item:mcwbridges:deepslate_brick_bridge_stair> : 1,
    <item:mcwbridges:deepslate_tile_bridge> : 1,
    <item:mcwbridges:deepslate_tile_bridge_pier> : 1,
    <item:mcwbridges:deepslate_tile_bridge_stair> : 1,
    <item:mcwbridges:dry_bamboo_bridge> : 25,
    <item:mcwbridges:dry_bamboo_bridge_pier> : 10,
    <item:mcwbridges:dry_bamboo_bridge_stair> : 25,
    <item:mcwbridges:iron_bridge> : 75,
    <item:mcwbridges:iron_bridge_pier> : 75,
    <item:mcwbridges:iron_bridge_stair> : 75,
    <item:mcwbridges:jungle_bridge_pier> : 1,
    <item:mcwbridges:jungle_log_bridge_middle> : 1,
    <item:mcwbridges:jungle_log_bridge_stair> : 1,
    <item:mcwbridges:jungle_rail_bridge> : 1,
    <item:mcwbridges:jungle_rope_bridge_stair> : 1,
    <item:mcwbridges:mossy_stone_brick_bridge> : 1,
    <item:mcwbridges:mossy_stone_bridge_pier> : 1,
    <item:mcwbridges:mossy_stone_bridge_stair> : 1,
    <item:mcwbridges:oak_bridge_pier> : 1,
    <item:mcwbridges:oak_log_bridge_middle> : 1,
    <item:mcwbridges:oak_log_bridge_stair> : 1,
    <item:mcwbridges:oak_rail_bridge> : 1,
    <item:mcwbridges:oak_rope_bridge_stair> : 1,
    <item:mcwbridges:orange_sandstone_bridge> : 1,
    <item:mcwbridges:pliers> : 525,
    <item:mcwbridges:red_sandstone_bridge_pier> : 1,
    <item:mcwbridges:red_sandstone_bridge_stair> : 1,
    <item:mcwbridges:rope_acacia_bridge> : 1,
    <item:mcwbridges:rope_birch_bridge> : 1,
    <item:mcwbridges:rope_crimson_bridge> : 1,
    <item:mcwbridges:rope_dark_oak_bridge> : 1,
    <item:mcwbridges:rope_jungle_bridge> : 1,
    <item:mcwbridges:rope_oak_bridge> : 1,
    <item:mcwbridges:rope_spruce_bridge> : 1,
    <item:mcwbridges:rope_warped_bridge> : 1,
    <item:mcwbridges:sandstone_bridge> : 1,
    <item:mcwbridges:sandstone_bridge_pier> : 1,
    <item:mcwbridges:sandstone_bridge_stair> : 1,
    <item:mcwbridges:spruce_bridge_pier> : 1,
    <item:mcwbridges:spruce_log_bridge_middle> : 1,
    <item:mcwbridges:spruce_log_bridge_stair> : 1,
    <item:mcwbridges:spruce_rail_bridge> : 1,
    <item:mcwbridges:spruce_rope_bridge_stair> : 1,
    <item:mcwbridges:stone_brick_bridge> : 1,
    <item:mcwbridges:stone_brick_bridge_stair> : 1,
    <item:mcwbridges:stone_bridge_pier> : 1,
    <item:mcwbridges:warped_bridge_pier> : 1,
    <item:mcwbridges:warped_log_bridge_middle> : 1,
    <item:mcwbridges:warped_log_bridge_stair> : 1,
    <item:mcwbridges:warped_rail_bridge> : 1,
    <item:mcwbridges:warped_rope_bridge_stair> : 1
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