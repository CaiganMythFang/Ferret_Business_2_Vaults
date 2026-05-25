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
    <item:mcwpaths:crimson_planks_path> : 1,
    <item:mcwpaths:dark_prismarine_basket_weave_paving> : 5,
    <item:mcwpaths:dark_prismarine_clover_paving> : 5,
    <item:mcwpaths:dark_prismarine_crystal_floor> : 25,
    <item:mcwpaths:dark_prismarine_crystal_floor_path> : 5,
    <item:mcwpaths:dark_prismarine_crystal_floor_slab> : 10,
    <item:mcwpaths:dark_prismarine_diamond_paving> : 5,
    <item:mcwpaths:dark_prismarine_dumble_paving> : 5,
    <item:mcwpaths:dark_prismarine_flagstone> : 250,
    <item:mcwpaths:dark_prismarine_flagstone_path> : 5,
    <item:mcwpaths:dark_prismarine_flagstone_slab> : 10,
    <item:mcwpaths:dark_prismarine_honeycomb_paving> : 5,
    <item:mcwpaths:dark_prismarine_running_bond> : 25,
    <item:mcwpaths:dark_prismarine_running_bond_path> : 5,
    <item:mcwpaths:dark_prismarine_running_bond_slab> : 10,
    <item:mcwpaths:dark_prismarine_square_paving> : 5,
    <item:mcwpaths:dark_prismarine_strewn_rocky_path> : 5,
    <item:mcwpaths:dark_prismarine_windmill_weave> : 25,
    <item:mcwpaths:dark_prismarine_windmill_weave_path> : 5,
    <item:mcwpaths:dark_prismarine_windmill_weave_slab> : 10,
    <item:mcwpaths:warped_planks_path> : 1,
    <item:mcwpaths:acacia_planks_path> : 1,
    <item:mcwpaths:andesite_basket_weave_paving> : 1,
    <item:mcwpaths:andesite_clover_paving> : 1,
    <item:mcwpaths:andesite_crystal_floor> : 1,
    <item:mcwpaths:andesite_crystal_floor_path> : 1,
    <item:mcwpaths:andesite_crystal_floor_slab> : 1,
    <item:mcwpaths:andesite_diamond_paving> : 1,
    <item:mcwpaths:andesite_dumble_paving> : 1,
    <item:mcwpaths:andesite_flagstone> : 1,
    <item:mcwpaths:andesite_flagstone_path> : 1,
    <item:mcwpaths:andesite_flagstone_slab> : 1,
    <item:mcwpaths:andesite_honeycomb_paving> : 1,
    <item:mcwpaths:andesite_running_bond> : 1,
    <item:mcwpaths:andesite_running_bond_path> : 1,
    <item:mcwpaths:andesite_running_bond_slab> : 1,
    <item:mcwpaths:andesite_square_paving> : 1,
    <item:mcwpaths:andesite_strewn_rocky_path> : 1,
    <item:mcwpaths:andesite_windmill_weave> : 1,
    <item:mcwpaths:andesite_windmill_weave_path> : 1,
    <item:mcwpaths:andesite_windmill_weave_slab> : 1,
    <item:mcwpaths:birch_planks_path> : 1,
    <item:mcwpaths:blackstone_basket_weave_paving> : 1,
    <item:mcwpaths:blackstone_clover_paving> : 1,
    <item:mcwpaths:blackstone_crystal_floor> : 1,
    <item:mcwpaths:blackstone_crystal_floor_path> : 1,
    <item:mcwpaths:blackstone_crystal_floor_slab> : 1,
    <item:mcwpaths:blackstone_diamond_paving> : 1,
    <item:mcwpaths:blackstone_dumble_paving> : 1,
    <item:mcwpaths:blackstone_flagstone> : 1,
    <item:mcwpaths:blackstone_flagstone_path> : 1,
    <item:mcwpaths:blackstone_flagstone_slab> : 1,
    <item:mcwpaths:blackstone_honeycomb_paving> : 1,
    <item:mcwpaths:blackstone_running_bond> : 1,
    <item:mcwpaths:blackstone_running_bond_path> : 1,
    <item:mcwpaths:blackstone_running_bond_slab> : 1,
    <item:mcwpaths:blackstone_square_paving> : 1,
    <item:mcwpaths:blackstone_strewn_rocky_path> : 1,
    <item:mcwpaths:blackstone_windmill_weave> : 1,
    <item:mcwpaths:blackstone_windmill_weave_path> : 1,
    <item:mcwpaths:blackstone_windmill_weave_slab> : 1,
    <item:mcwpaths:brick_basket_weave_paving> : 10,
    <item:mcwpaths:brick_clover_paving> : 10,
    <item:mcwpaths:brick_crystal_floor> : 50,
    <item:mcwpaths:brick_crystal_floor_path> : 10,
    <item:mcwpaths:brick_crystal_floor_slab> : 25,
    <item:mcwpaths:brick_diamond_paving> : 10,
    <item:mcwpaths:brick_dumble_paving> : 10,
    <item:mcwpaths:brick_flagstone> : 50,
    <item:mcwpaths:brick_flagstone_path> : 10,
    <item:mcwpaths:brick_flagstone_slab> : 25,
    <item:mcwpaths:brick_honeycomb_paving> : 10,
    <item:mcwpaths:brick_running_bond> : 50,
    <item:mcwpaths:brick_running_bond_path> : 10,
    <item:mcwpaths:brick_running_bond_slab> : 25,
    <item:mcwpaths:brick_square_paving> : 10,
    <item:mcwpaths:brick_strewn_rocky_path> : 10,
    <item:mcwpaths:brick_windmill_weave> : 50,
    <item:mcwpaths:brick_windmill_weave_path> : 10,
    <item:mcwpaths:brick_windmill_weave_slab> : 25,
    <item:mcwpaths:cobbled_deepslate_basket_weave_paving> : 1,
    <item:mcwpaths:cobbled_deepslate_clover_paving> : 1,
    <item:mcwpaths:cobbled_deepslate_crystal_floor> : 1,
    <item:mcwpaths:cobbled_deepslate_crystal_floor_path> : 1,
    <item:mcwpaths:cobbled_deepslate_crystal_floor_slab> : 1,
    <item:mcwpaths:cobbled_deepslate_diamond_paving> : 1,
    <item:mcwpaths:cobbled_deepslate_dumble_paving> : 1,
    <item:mcwpaths:cobbled_deepslate_flagstone> : 1,
    <item:mcwpaths:cobbled_deepslate_flagstone_path> : 1,
    <item:mcwpaths:cobbled_deepslate_flagstone_slab> : 1,
    <item:mcwpaths:cobbled_deepslate_honeycomb_paving> : 1,
    <item:mcwpaths:cobbled_deepslate_running_bond> : 1,
    <item:mcwpaths:cobbled_deepslate_running_bond_path> : 1,
    <item:mcwpaths:cobbled_deepslate_running_bond_slab> : 1,
    <item:mcwpaths:cobbled_deepslate_square_paving> : 1,
    <item:mcwpaths:cobbled_deepslate_strewn_rocky_path> : 1,
    <item:mcwpaths:cobbled_deepslate_windmill_weave> : 1,
    <item:mcwpaths:cobbled_deepslate_windmill_weave_path> : 1,
    <item:mcwpaths:cobbled_deepslate_windmill_weave_slab> : 1,
    <item:mcwpaths:cobblestone_basket_weave_paving> : 1,
    <item:mcwpaths:cobblestone_clover_paving> : 1,
    <item:mcwpaths:cobblestone_diamond_paving> : 1,
    <item:mcwpaths:cobblestone_dumble_paving> : 1,
    <item:mcwpaths:cobblestone_honeycomb_paving> : 1,
    <item:mcwpaths:cobblestone_square_paving> : 1,
    <item:mcwpaths:dark_oak_planks_path> : 1,
    <item:mcwpaths:deepslate_basket_weave_paving> : 1,
    <item:mcwpaths:deepslate_clover_paving> : 1,
    <item:mcwpaths:deepslate_crystal_floor> : 1,
    <item:mcwpaths:deepslate_crystal_floor_path> : 1,
    <item:mcwpaths:deepslate_crystal_floor_slab> : 1,
    <item:mcwpaths:deepslate_diamond_paving> : 1,
    <item:mcwpaths:deepslate_dumble_paving> : 1,
    <item:mcwpaths:deepslate_flagstone> : 1,
    <item:mcwpaths:deepslate_flagstone_path> : 1,
    <item:mcwpaths:deepslate_flagstone_slab> : 1,
    <item:mcwpaths:deepslate_honeycomb_paving> : 1,
    <item:mcwpaths:deepslate_running_bond> : 1,
    <item:mcwpaths:deepslate_running_bond_path> : 1,
    <item:mcwpaths:deepslate_running_bond_slab> : 1,
    <item:mcwpaths:deepslate_square_paving> : 1,
    <item:mcwpaths:deepslate_strewn_rocky_path> : 1,
    <item:mcwpaths:deepslate_windmill_weave> : 1,
    <item:mcwpaths:deepslate_windmill_weave_path> : 1,
    <item:mcwpaths:deepslate_windmill_weave_slab> : 1,
    <item:mcwpaths:diorite_basket_weave_paving> : 1,
    <item:mcwpaths:diorite_clover_paving> : 1,
    <item:mcwpaths:diorite_crystal_floor> : 1,
    <item:mcwpaths:diorite_crystal_floor_path> : 1,
    <item:mcwpaths:diorite_crystal_floor_slab> : 1,
    <item:mcwpaths:diorite_diamond_paving> : 1,
    <item:mcwpaths:diorite_dumble_paving> : 1,
    <item:mcwpaths:diorite_flagstone> : 1,
    <item:mcwpaths:diorite_flagstone_path> : 1,
    <item:mcwpaths:diorite_flagstone_slab> : 1,
    <item:mcwpaths:diorite_honeycomb_paving> : 1,
    <item:mcwpaths:diorite_running_bond> : 1,
    <item:mcwpaths:diorite_running_bond_path> : 1,
    <item:mcwpaths:diorite_running_bond_slab> : 1,
    <item:mcwpaths:diorite_square_paving> : 1,
    <item:mcwpaths:diorite_strewn_rocky_path> : 1,
    <item:mcwpaths:diorite_windmill_weave> : 1,
    <item:mcwpaths:diorite_windmill_weave_path> : 1,
    <item:mcwpaths:diorite_windmill_weave_slab> : 1,
    <item:mcwpaths:granite_basket_weave_paving> : 1,
    <item:mcwpaths:granite_clover_paving> : 1,
    <item:mcwpaths:granite_crystal_floor> : 1,
    <item:mcwpaths:granite_crystal_floor_path> : 1,
    <item:mcwpaths:granite_crystal_floor_slab> : 1,
    <item:mcwpaths:granite_diamond_paving> : 1,
    <item:mcwpaths:granite_dumble_paving> : 1,
    <item:mcwpaths:granite_flagstone> : 1,
    <item:mcwpaths:granite_flagstone_path> : 1,
    <item:mcwpaths:granite_flagstone_slab> : 1,
    <item:mcwpaths:granite_honeycomb_paving> : 1,
    <item:mcwpaths:granite_running_bond> : 1,
    <item:mcwpaths:granite_running_bond_path> : 1,
    <item:mcwpaths:granite_running_bond_slab> : 1,
    <item:mcwpaths:granite_square_paving> : 1,
    <item:mcwpaths:granite_strewn_rocky_path> : 1,
    <item:mcwpaths:granite_windmill_weave> : 1,
    <item:mcwpaths:granite_windmill_weave_path> : 1,
    <item:mcwpaths:granite_windmill_weave_slab> : 1,
    <item:mcwpaths:jungle_planks_path> : 1,
    <item:mcwpaths:mossy_cobblestone_basket_weave_paving> : 1,
    <item:mcwpaths:mossy_cobblestone_clover_paving> : 1,
    <item:mcwpaths:mossy_cobblestone_diamond_paving> : 1,
    <item:mcwpaths:mossy_cobblestone_dumble_paving> : 1,
    <item:mcwpaths:mossy_cobblestone_honeycomb_paving> : 1,
    <item:mcwpaths:mossy_cobblestone_square_paving> : 1,
    <item:mcwpaths:mossy_stone_crystal_floor> : 1,
    <item:mcwpaths:mossy_stone_crystal_floor_path> : 1,
    <item:mcwpaths:mossy_stone_crystal_floor_slab> : 1,
    <item:mcwpaths:mossy_stone_flagstone> : 1,
    <item:mcwpaths:mossy_stone_flagstone_path> : 1,
    <item:mcwpaths:mossy_stone_flagstone_slab> : 1,
    <item:mcwpaths:mossy_stone_running_bond> : 1,
    <item:mcwpaths:mossy_stone_running_bond_path> : 1,
    <item:mcwpaths:mossy_stone_running_bond_slab> : 1,
    <item:mcwpaths:mossy_stone_strewn_rocky_path> : 1,
    <item:mcwpaths:mossy_stone_windmill_weave> : 1,
    <item:mcwpaths:mossy_stone_windmill_weave_path> : 1,
    <item:mcwpaths:mossy_stone_windmill_weave_slab> : 1,
    <item:mcwpaths:oak_planks_path> : 1,
    <item:mcwpaths:red_sandstone_basket_weave_paving> : 1,
    <item:mcwpaths:red_sandstone_clover_paving> : 1,
    <item:mcwpaths:red_sandstone_crystal_floor> : 1,
    <item:mcwpaths:red_sandstone_crystal_floor_path> : 1,
    <item:mcwpaths:red_sandstone_crystal_floor_slab> : 1,
    <item:mcwpaths:red_sandstone_diamond_paving> : 1,
    <item:mcwpaths:red_sandstone_dumble_paving> : 1,
    <item:mcwpaths:red_sandstone_flagstone> : 1,
    <item:mcwpaths:red_sandstone_flagstone_path> : 1,
    <item:mcwpaths:red_sandstone_flagstone_slab> : 1,
    <item:mcwpaths:red_sandstone_honeycomb_paving> : 1,
    <item:mcwpaths:red_sandstone_running_bond> : 1,
    <item:mcwpaths:red_sandstone_running_bond_path> : 1,
    <item:mcwpaths:red_sandstone_running_bond_slab> : 1,
    <item:mcwpaths:red_sandstone_square_paving> : 1,
    <item:mcwpaths:red_sandstone_strewn_rocky_path> : 1,
    <item:mcwpaths:red_sandstone_windmill_weave> : 1,
    <item:mcwpaths:red_sandstone_windmill_weave_path> : 1,
    <item:mcwpaths:red_sandstone_windmill_weave_slab> : 1,
    <item:mcwpaths:sandstone_basket_weave_paving> : 1,
    <item:mcwpaths:sandstone_clover_paving> : 1,
    <item:mcwpaths:sandstone_crystal_floor> : 1,
    <item:mcwpaths:sandstone_crystal_floor_path> : 1,
    <item:mcwpaths:sandstone_crystal_floor_slab> : 1,
    <item:mcwpaths:sandstone_diamond_paving> : 1,
    <item:mcwpaths:sandstone_dumble_paving> : 1,
    <item:mcwpaths:sandstone_flagstone> : 1,
    <item:mcwpaths:sandstone_flagstone_path> : 1,
    <item:mcwpaths:sandstone_flagstone_slab> : 1,
    <item:mcwpaths:sandstone_honeycomb_paving> : 1,
    <item:mcwpaths:sandstone_running_bond> : 1,
    <item:mcwpaths:sandstone_running_bond_path> : 1,
    <item:mcwpaths:sandstone_running_bond_slab> : 1,
    <item:mcwpaths:sandstone_square_paving> : 1,
    <item:mcwpaths:sandstone_strewn_rocky_path> : 1,
    <item:mcwpaths:sandstone_windmill_weave> : 1,
    <item:mcwpaths:sandstone_windmill_weave_path> : 1,
    <item:mcwpaths:sandstone_windmill_weave_slab> : 1,
    <item:mcwpaths:spruce_planks_path> : 1,
    <item:mcwpaths:stone_crystal_floor> : 1,
    <item:mcwpaths:stone_crystal_floor_path> : 1,
    <item:mcwpaths:stone_crystal_floor_slab> : 1,
    <item:mcwpaths:stone_flagstone> : 1,
    <item:mcwpaths:stone_flagstone_path> : 1,
    <item:mcwpaths:stone_flagstone_slab> : 1,
    <item:mcwpaths:stone_running_bond> : 1,
    <item:mcwpaths:stone_running_bond_path> : 1,
    <item:mcwpaths:stone_running_bond_slab> : 1,
    <item:mcwpaths:stone_strewn_rocky_path> : 1,
    <item:mcwpaths:stone_windmill_weave> : 1,
    <item:mcwpaths:stone_windmill_weave_path> : 1,
    <item:mcwpaths:stone_windmill_weave_slab> : 1
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