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
    <item:redeco:acacia_bench> : 5,
    <item:redeco:acacia_chair> : 5,
    <item:redeco:acacia_coffee_table> : 5,
    <item:redeco:acacia_drawers> : 10,
    <item:redeco:acacia_lattice> : 1,
    <item:redeco:acacia_plank_fence> : 2,
    <item:redeco:acacia_plank_gate> : 5,
    <item:redeco:acacia_shelf> : 1,
    <item:redeco:acacia_side_table> : 10,
    <item:redeco:acacia_stool> : 5,
    <item:redeco:acacia_table> : 5,
    <item:redeco:azalea_terrarium> : 10,
    <item:redeco:bamboo_terrarium> : 10,
    <item:redeco:birch_bench> : 5,
    <item:redeco:birch_chair> : 5,
    <item:redeco:birch_coffee_table> : 5,
    <item:redeco:birch_drawers> : 10,
    <item:redeco:birch_lattice> : 1,
    <item:redeco:birch_plank_fence> : 2,
    <item:redeco:birch_plank_gate> : 5,
    <item:redeco:birch_shelf> : 1,
    <item:redeco:birch_side_table> : 10,
    <item:redeco:birch_stool> : 5,
    <item:redeco:birch_table> : 5,
    <item:redeco:black_fluffy_carpet> : 5,
    <item:redeco:black_lamp> : 250,
    <item:redeco:black_ottoman> : 250,
    <item:redeco:black_paper_lantern> : 10,
    <item:redeco:black_pet_bed> : 25,
    <item:redeco:black_sofa> : 250,
    <item:redeco:black_upholstery> : 5,
    <item:redeco:blackstone_stepping_stones> : 1,
    <item:redeco:blue_fluffy_carpet> : 5,
    <item:redeco:blue_lamp> : 250,
    <item:redeco:blue_ottoman> : 250,
    <item:redeco:blue_paper_lantern> : 10,
    <item:redeco:blue_pet_bed> : 25,
    <item:redeco:blue_sofa> : 250,
    <item:redeco:blue_upholstery> : 5,
    <item:redeco:brown_fluffy_carpet> : 5,
    <item:redeco:brown_lamp> : 250,
    <item:redeco:brown_mushroom_terrarium> : 10,
    <item:redeco:brown_ottoman> : 250,
    <item:redeco:brown_paper_lantern> : 10,
    <item:redeco:brown_pet_bed> : 25,
    <item:redeco:brown_sofa> : 250,
    <item:redeco:brown_upholstery> : 5,
    <item:redeco:calcite_stepping_stones> : 1,
    <item:redeco:cobbled_deepslate_stepping_stones> : 1,
    <item:redeco:cobblestone_stepping_stones> : 1,
    <item:redeco:crimson_bench> : 5,
    <item:redeco:crimson_chair> : 5,
    <item:redeco:crimson_coffee_table> : 5,
    <item:redeco:crimson_drawers> : 10,
    <item:redeco:crimson_fungus_terrarium> : 10,
    <item:redeco:crimson_lattice> : 1,
    <item:redeco:crimson_plank_fence> : 2,
    <item:redeco:crimson_plank_gate> : 5,
    <item:redeco:crimson_shelf> : 1,
    <item:redeco:crimson_side_table> : 10,
    <item:redeco:crimson_stool> : 5,
    <item:redeco:crimson_table> : 5,
    <item:redeco:cyan_fluffy_carpet> : 5,
    <item:redeco:cyan_lamp> : 250,
    <item:redeco:cyan_ottoman> : 250,
    <item:redeco:cyan_paper_lantern> : 10,
    <item:redeco:cyan_pet_bed> : 25,
    <item:redeco:cyan_sofa> : 250,
    <item:redeco:cyan_upholstery> : 5,
    <item:redeco:dark_oak_bench> : 5,
    <item:redeco:dark_oak_chair> : 5,
    <item:redeco:dark_oak_coffee_table> : 5,
    <item:redeco:dark_oak_drawers> : 10,
    <item:redeco:dark_oak_lattice> : 1,
    <item:redeco:dark_oak_plank_fence> : 2,
    <item:redeco:dark_oak_plank_gate> : 5,
    <item:redeco:dark_oak_shelf> : 1,
    <item:redeco:dark_oak_side_table> : 10,
    <item:redeco:dark_oak_stool> : 5,
    <item:redeco:dark_oak_table> : 5,
    <item:redeco:deepslate_lantern> : 10,
    <item:redeco:deepslate_stepping_stones> : 1,
    <item:redeco:dripleaf_terrarium> : 10,
    <item:redeco:fern_terrarium> : 10,
    <item:redeco:flowering_azalea_terrarium> : 10,
    <item:redeco:glow_ink_light_bulb> : 25,
    <item:redeco:glowberry_terrarium> : 10,
    <item:redeco:glowstone_light_bulb> : 10,
    <item:redeco:grass_terrarium> : 10,
    <item:redeco:gray_fluffy_carpet> : 5,
    <item:redeco:gray_lamp> : 250,
    <item:redeco:gray_ottoman> : 250,
    <item:redeco:gray_paper_lantern> : 10,
    <item:redeco:gray_pet_bed> : 25,
    <item:redeco:gray_sofa> : 250,
    <item:redeco:gray_upholstery> : 5,
    <item:redeco:green_fluffy_carpet> : 5,
    <item:redeco:green_lamp> : 250,
    <item:redeco:green_ottoman> : 250,
    <item:redeco:green_paper_lantern> : 10,
    <item:redeco:green_pet_bed> : 25,
    <item:redeco:green_sofa> : 250,
    <item:redeco:green_upholstery> : 5,
    <item:redeco:hammer> : 275,
    <item:redeco:jar> : 2,
    <item:redeco:jungle_bench> : 5,
    <item:redeco:jungle_chair> : 5,
    <item:redeco:jungle_coffee_table> : 5,
    <item:redeco:jungle_drawers> : 10,
    <item:redeco:jungle_lattice> : 1,
    <item:redeco:jungle_plank_fence> : 2,
    <item:redeco:jungle_plank_gate> : 5,
    <item:redeco:jungle_shelf> : 1,
    <item:redeco:jungle_side_table> : 10,
    <item:redeco:jungle_stool> : 5,
    <item:redeco:jungle_table> : 5,
    <item:redeco:light_blue_fluffy_carpet> : 5,
    <item:redeco:light_blue_lamp> : 250,
    <item:redeco:light_blue_ottoman> : 250,
    <item:redeco:light_blue_paper_lantern> : 10,
    <item:redeco:light_blue_pet_bed> : 25,
    <item:redeco:light_blue_sofa> : 250,
    <item:redeco:light_blue_upholstery> : 5,
    <item:redeco:light_gray_fluffy_carpet> : 5,
    <item:redeco:light_gray_lamp> : 250,
    <item:redeco:light_gray_ottoman> : 250,
    <item:redeco:light_gray_paper_lantern> : 10,
    <item:redeco:light_gray_pet_bed> : 25,
    <item:redeco:light_gray_sofa> : 250,
    <item:redeco:light_gray_upholstery> : 5,
    <item:redeco:lime_fluffy_carpet> : 5,
    <item:redeco:lime_lamp> : 250,
    <item:redeco:lime_ottoman> : 250,
    <item:redeco:lime_paper_lantern> : 10,
    <item:redeco:lime_pet_bed> : 25,
    <item:redeco:lime_sofa> : 250,
    <item:redeco:lime_upholstery> : 5,
    <item:redeco:magenta_fluffy_carpet> : 5,
    <item:redeco:magenta_lamp> : 250,
    <item:redeco:magenta_ottoman> : 250,
    <item:redeco:magenta_paper_lantern> : 10,
    <item:redeco:magenta_pet_bed> : 25,
    <item:redeco:magenta_sofa> : 250,
    <item:redeco:magenta_upholstery> : 5,
    <item:redeco:mossy_cobblestone_stepping_stones> : 1,
    <item:redeco:oak_bench> : 5,
    <item:redeco:oak_chair> : 5,
    <item:redeco:oak_coffee_table> : 5,
    <item:redeco:oak_drawers> : 10,
    <item:redeco:oak_lattice> : 1,
    <item:redeco:oak_plank_fence> : 2,
    <item:redeco:oak_plank_gate> : 5,
    <item:redeco:oak_shelf> : 1,
    <item:redeco:oak_side_table> : 10,
    <item:redeco:oak_stool> : 5,
    <item:redeco:oak_table> : 5,
    <item:redeco:orange_fluffy_carpet> : 5,
    <item:redeco:orange_lamp> : 250,
    <item:redeco:orange_ottoman> : 250,
    <item:redeco:orange_paper_lantern> : 10,
    <item:redeco:orange_pet_bed> : 25,
    <item:redeco:orange_sofa> : 250,
    <item:redeco:orange_upholstery> : 5,
    <item:redeco:pink_fluffy_carpet> : 5,
    <item:redeco:pink_lamp> : 250,
    <item:redeco:pink_ottoman> : 250,
    <item:redeco:pink_paper_lantern> : 10,
    <item:redeco:pink_pet_bed> : 25,
    <item:redeco:pink_sofa> : 250,
    <item:redeco:pink_upholstery> : 5,
    <item:redeco:purple_fluffy_carpet> : 5,
    <item:redeco:purple_lamp> : 250,
    <item:redeco:purple_ottoman> : 250,
    <item:redeco:purple_paper_lantern> : 10,
    <item:redeco:purple_pet_bed> : 25,
    <item:redeco:purple_sofa> : 250,
    <item:redeco:purple_upholstery> : 5,
    <item:redeco:red_fluffy_carpet> : 5,
    <item:redeco:red_lamp> : 250,
    <item:redeco:red_mushroom_terrarium> : 10,
    <item:redeco:red_ottoman> : 250,
    <item:redeco:red_paper_lantern> : 10,
    <item:redeco:red_pet_bed> : 25,
    <item:redeco:red_sofa> : 250,
    <item:redeco:red_upholstery> : 5,
    <item:redeco:spruce_bench> : 5,
    <item:redeco:spruce_chair> : 5,
    <item:redeco:spruce_coffee_table> : 5,
    <item:redeco:spruce_drawers> : 10,
    <item:redeco:spruce_lattice> : 1,
    <item:redeco:spruce_plank_fence> : 2,
    <item:redeco:spruce_plank_gate> : 5,
    <item:redeco:spruce_shelf> : 1,
    <item:redeco:spruce_side_table> : 10,
    <item:redeco:spruce_stool> : 5,
    <item:redeco:spruce_table> : 5,
    <item:redeco:stone_lantern> : 10,
    <item:redeco:stone_stepping_stones> : 5,
    <item:redeco:warped_bench> : 5,
    <item:redeco:warped_chair> : 5,
    <item:redeco:warped_coffee_table> : 10,
    <item:redeco:warped_drawers> : 1,
    <item:redeco:warped_fungus_terrarium> : 10,
    <item:redeco:warped_lattice> : 10,
    <item:redeco:warped_plank_fence> : 2,
    <item:redeco:warped_plank_gate> : 5,
    <item:redeco:warped_shelf> : 1,
    <item:redeco:warped_side_table> : 10,
    <item:redeco:warped_stool> : 5,
    <item:redeco:warped_table> : 5,
    <item:redeco:white_fluffy_carpet> : 5,
    <item:redeco:white_lamp> : 250,
    <item:redeco:white_ottoman> : 250,
    <item:redeco:white_paper_lantern> : 10,
    <item:redeco:white_pet_bed> : 25,
    <item:redeco:white_sofa> : 250,
    <item:redeco:white_upholstery> : 5,
    <item:redeco:yellow_fluffy_carpet> : 5,
    <item:redeco:yellow_lamp> : 250,
    <item:redeco:yellow_ottoman> : 250,
    <item:redeco:yellow_paper_lantern> : 10,
    <item:redeco:yellow_pet_bed> : 25,
    <item:redeco:yellow_sofa> : 250,
    <item:redeco:yellow_upholstery> : 5
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