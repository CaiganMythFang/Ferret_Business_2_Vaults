import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:mcwfences:end_brick_grass_topped_wall> : 1,
    <item:mcwfences:end_brick_pillar_wall> : 1,
    <item:mcwfences:end_brick_railing_gate> : 1,
    <item:mcwfences:iron_cheval_de_frise> : 925,
    <item:mcwfences:modern_prismarine_wall> : 10,
    <item:mcwfences:modern_quartz_wall> : 500,
    <item:mcwfences:prismarine_grass_topped_wall> : 10,
    <item:mcwfences:prismarine_pillar_wall> : 10,
    <item:mcwfences:prismarine_railing_gate> : 10,
    <item:mcwfences:quartz_grass_topped_wall> : 425,
    <item:mcwfences:quartz_pillar_wall> : 500,
    <item:mcwfences:quartz_railing_gate> : 425,
    <item:mcwfences:railing_prismarine_wall> : 10,
    <item:mcwfences:railing_quartz_wall> : 425,
    <item:mcwfences:acacia_hedge> : 1,
    <item:mcwfences:acacia_highley_gate> : 10,
    <item:mcwfences:acacia_horse_fence> : 2,
    <item:mcwfences:acacia_picket_fence> : 2,
    <item:mcwfences:acacia_pyramid_gate> : 5,
    <item:mcwfences:acacia_stockade_fence> : 2,
    <item:mcwfences:acacia_wired_fence> : 25,
    <item:mcwfences:andesite_grass_topped_wall> : 1,
    <item:mcwfences:andesite_pillar_wall> : 1,
    <item:mcwfences:andesite_railing_gate> : 1,
    <item:mcwfences:azalea_hedge> : 1,
    <item:mcwfences:bamboo_fence> : 10,
    <item:mcwfences:birch_hedge> : 1,
    <item:mcwfences:birch_highley_gate> : 10,
    <item:mcwfences:birch_horse_fence> : 2,
    <item:mcwfences:birch_picket_fence> : 2,
    <item:mcwfences:birch_pyramid_gate> : 5,
    <item:mcwfences:birch_stockade_fence> : 2,
    <item:mcwfences:birch_wired_fence> : 25,
    <item:mcwfences:blackstone_brick_railing_gate> : 300,
    <item:mcwfences:blackstone_grass_topped_wall> : 1,
    <item:mcwfences:blackstone_pillar_wall> : 1,
    <item:mcwfences:blackstone_railing_gate> : 1,
    <item:mcwfences:crimson_highley_gate> : 5,
    <item:mcwfences:crimson_horse_fence> : 2,
    <item:mcwfences:crimson_picket_fence> : 2,
    <item:mcwfences:crimson_pyramid_gate> : 5,
    <item:mcwfences:crimson_stockade_fence> : 2,
    <item:mcwfences:crimson_wired_fence> : 25,
    <item:mcwfences:dark_oak_hedge> : 1,
    <item:mcwfences:dark_oak_highley_gate> : 10,
    <item:mcwfences:dark_oak_horse_fence> : 2,
    <item:mcwfences:dark_oak_picket_fence> : 2,
    <item:mcwfences:dark_oak_pyramid_gate> : 5,
    <item:mcwfences:dark_oak_stockade_fence> : 2,
    <item:mcwfences:dark_oak_wired_fence> : 25,
    <item:mcwfences:deepslate_brick_grass_topped_wall> : 1,
    <item:mcwfences:deepslate_brick_pillar_wall> : 1,
    <item:mcwfences:deepslate_brick_railing_gate> : 1,
    <item:mcwfences:deepslate_grass_topped_wall> : 1,
    <item:mcwfences:deepslate_pillar_wall> : 1,
    <item:mcwfences:deepslate_railing_gate> : 1,
    <item:mcwfences:diorite_grass_topped_wall> : 1,
    <item:mcwfences:diorite_pillar_wall> : 1,
    <item:mcwfences:diorite_railing_gate> : 1,
    <item:mcwfences:flowering_azalea_hedge> : 1,
    <item:mcwfences:granite_grass_topped_wall> : 1,
    <item:mcwfences:granite_pillar_wall> : 1,
    <item:mcwfences:granite_railing_gate> : 1,
    <item:mcwfences:jungle_hedge> : 1,
    <item:mcwfences:jungle_highley_gate> : 10,
    <item:mcwfences:jungle_horse_fence> : 2,
    <item:mcwfences:jungle_picket_fence> : 2,
    <item:mcwfences:jungle_pyramid_gate> : 5,
    <item:mcwfences:jungle_stockade_fence> : 2,
    <item:mcwfences:jungle_wired_fence> : 25,
    <item:mcwfences:modern_andesite_wall> : 1,
    <item:mcwfences:modern_blackstone_wall> : 1,
    <item:mcwfences:modern_deepslate_brick_wall> : 1,
    <item:mcwfences:modern_deepslate_wall> : 1,
    <item:mcwfences:modern_diorite_wall> : 1,
    <item:mcwfences:modern_end_brick_wall> : 1,
    <item:mcwfences:modern_granite_wall> : 1,
    <item:mcwfences:modern_nether_brick_wall> : 1,
    <item:mcwfences:modern_red_sandstone_wall> : 1,
    <item:mcwfences:modern_sandstone_wall> : 1,
    <item:mcwfences:modern_stone_brick_wall> : 1,
    <item:mcwfences:nether_brick_grass_topped_wall> : 1,
    <item:mcwfences:nether_brick_pillar_wall> : 1,
    <item:mcwfences:nether_brick_railing_gate> : 1,
    <item:mcwfences:oak_hedge> : 1,
    <item:mcwfences:oak_highley_gate> : 10,
    <item:mcwfences:oak_horse_fence> : 2,
    <item:mcwfences:oak_picket_fence> : 2,
    <item:mcwfences:oak_pyramid_gate> : 5,
    <item:mcwfences:oak_stockade_fence> : 2,
    <item:mcwfences:oak_wired_fence> : 25,
    <item:mcwfences:railing_andesite_wall> : 1,
    <item:mcwfences:railing_blackstone_wall> : 1,
    <item:mcwfences:railing_deepslate_brick_wall> : 1,
    <item:mcwfences:railing_deepslate_wall> : 1,
    <item:mcwfences:railing_diorite_wall> : 1,
    <item:mcwfences:railing_end_brick_wall> : 1,
    <item:mcwfences:railing_granite_wall> : 1,
    <item:mcwfences:railing_nether_brick_wall> : 1,
    <item:mcwfences:railing_red_sandstone_wall> : 1,
    <item:mcwfences:railing_sandstone_wall> : 1,
    <item:mcwfences:railing_stone_brick_wall> : 1,
    <item:mcwfences:red_sandstone_grass_topped_wall> : 1,
    <item:mcwfences:red_sandstone_pillar_wall> : 1,
    <item:mcwfences:red_sandstone_railing_gate> : 1,
    <item:mcwfences:sandstone_grass_topped_wall> : 1,
    <item:mcwfences:sandstone_pillar_wall> : 1,
    <item:mcwfences:sandstone_railing_gate> : 1,
    <item:mcwfences:spruce_hedge> : 1,
    <item:mcwfences:spruce_highley_gate> : 10,
    <item:mcwfences:spruce_horse_fence> : 2,
    <item:mcwfences:spruce_picket_fence> : 2,
    <item:mcwfences:spruce_pyramid_gate> : 5,
    <item:mcwfences:spruce_stockade_fence> : 2,
    <item:mcwfences:spruce_wired_fence> : 25,
    <item:mcwfences:stone_brick_railing_gate> : 1,
    <item:mcwfences:stone_grass_topped_wall> : 1,
    <item:mcwfences:stone_pillar_wall> : 1,
    <item:mcwfences:warped_highley_gate> : 5,
    <item:mcwfences:warped_horse_fence> : 2,
    <item:mcwfences:warped_picket_fence> : 2,
    <item:mcwfences:warped_pyramid_gate> : 5,
    <item:mcwfences:warped_stockade_fence> : 2,
    <item:mcwfences:warped_wired_fence> : 25,
    <item:mcwfences:wooden_cheval_de_frise> : 1
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