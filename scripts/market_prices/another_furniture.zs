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
    <item:another_furniture:acacia_bench> : 2,
    <item:another_furniture:acacia_chair> : 1,
    <item:another_furniture:acacia_drawer> : 2,
    <item:another_furniture:acacia_planter_box> : 2,
    <item:another_furniture:acacia_shelf> : 1,
    <item:another_furniture:acacia_shutter> : 1,
    <item:another_furniture:acacia_table> : 1,
    <item:another_furniture:birch_bench> : 2,
    <item:another_furniture:birch_chair> : 1,
    <item:another_furniture:birch_drawer> : 2,
    <item:another_furniture:birch_planter_box> : 2,
    <item:another_furniture:birch_shelf> : 1,
    <item:another_furniture:birch_shutter> : 1,
    <item:another_furniture:birch_table> : 1,
    <item:another_furniture:black_curtain> : 10,
    <item:another_furniture:black_lamp> : 10,
    <item:another_furniture:black_sofa> : 10,
    <item:another_furniture:black_stool> : 5,
    <item:another_furniture:black_tall_stool> : 5,
    <item:another_furniture:blue_curtain> : 10,
    <item:another_furniture:blue_lamp> : 10,
    <item:another_furniture:blue_sofa> : 10,
    <item:another_furniture:blue_stool> : 5,
    <item:another_furniture:blue_tall_stool> : 5,
    <item:another_furniture:brown_curtain> : 10,
    <item:another_furniture:brown_lamp> : 10,
    <item:another_furniture:brown_sofa> : 10,
    <item:another_furniture:brown_stool> : 5,
    <item:another_furniture:brown_tall_stool> : 5,
    <item:another_furniture:crimson_bench> : 2,
    <item:another_furniture:crimson_chair> : 1,
    <item:another_furniture:crimson_drawer> : 2,
    <item:another_furniture:crimson_planter_box> : 2,
    <item:another_furniture:crimson_shelf> : 1,
    <item:another_furniture:crimson_shutter> : 1,
    <item:another_furniture:crimson_table> : 1,
    <item:another_furniture:cyan_curtain> : 10,
    <item:another_furniture:cyan_lamp> : 10,
    <item:another_furniture:cyan_sofa> : 10,
    <item:another_furniture:cyan_stool> : 5,
    <item:another_furniture:cyan_tall_stool> : 5,
    <item:another_furniture:dark_oak_bench> : 2,
    <item:another_furniture:dark_oak_chair> : 1,
    <item:another_furniture:dark_oak_drawer> : 2,
    <item:another_furniture:dark_oak_planter_box> : 2,
    <item:another_furniture:dark_oak_shelf> : 1,
    <item:another_furniture:dark_oak_shutter> : 1,
    <item:another_furniture:dark_oak_table> : 1,
    <item:another_furniture:furniture_hammer> : 5,
    <item:another_furniture:gray_curtain> : 10,
    <item:another_furniture:gray_lamp> : 10,
    <item:another_furniture:gray_sofa> : 10,
    <item:another_furniture:gray_stool> : 5,
    <item:another_furniture:gray_tall_stool> : 5,
    <item:another_furniture:green_curtain> : 10,
    <item:another_furniture:green_lamp> : 10,
    <item:another_furniture:green_sofa> : 10,
    <item:another_furniture:green_stool> : 5,
    <item:another_furniture:green_tall_stool> : 5,
    <item:another_furniture:jungle_bench> : 2,
    <item:another_furniture:jungle_chair> : 1,
    <item:another_furniture:jungle_drawer> : 2,
    <item:another_furniture:jungle_planter_box> : 2,
    <item:another_furniture:jungle_shelf> : 1,
    <item:another_furniture:jungle_shutter> : 1,
    <item:another_furniture:jungle_table> : 1,
    <item:another_furniture:light_blue_curtain> : 10,
    <item:another_furniture:light_blue_lamp> : 10,
    <item:another_furniture:light_blue_sofa> : 10,
    <item:another_furniture:light_blue_stool> : 5,
    <item:another_furniture:light_blue_tall_stool> : 5,
    <item:another_furniture:light_gray_curtain> : 10,
    <item:another_furniture:light_gray_lamp> : 10,
    <item:another_furniture:light_gray_sofa> : 10,
    <item:another_furniture:light_gray_stool> : 5,
    <item:another_furniture:light_gray_tall_stool> : 5,
    <item:another_furniture:lime_curtain> : 10,
    <item:another_furniture:lime_lamp> : 10,
    <item:another_furniture:lime_sofa> : 10,
    <item:another_furniture:lime_stool> : 5,
    <item:another_furniture:lime_tall_stool> : 5,
    <item:another_furniture:magenta_curtain> : 10,
    <item:another_furniture:magenta_lamp> : 10,
    <item:another_furniture:magenta_sofa> : 10,
    <item:another_furniture:magenta_stool> : 5,
    <item:another_furniture:magenta_tall_stool> : 5,
    <item:another_furniture:oak_bench> : 2,
    <item:another_furniture:oak_chair> : 1,
    <item:another_furniture:oak_drawer> : 2,
    <item:another_furniture:oak_planter_box> : 2,
    <item:another_furniture:oak_shelf> : 1,
    <item:another_furniture:oak_shutter> : 1,
    <item:another_furniture:oak_table> : 1,
    <item:another_furniture:orange_curtain> : 10,
    <item:another_furniture:orange_lamp> : 10,
    <item:another_furniture:orange_sofa> : 10,
    <item:another_furniture:orange_stool> : 5,
    <item:another_furniture:orange_tall_stool> : 5,
    <item:another_furniture:pink_curtain> : 10,
    <item:another_furniture:pink_lamp> : 10,
    <item:another_furniture:pink_sofa> : 10,
    <item:another_furniture:pink_stool> : 5,
    <item:another_furniture:pink_tall_stool> : 5,
    <item:another_furniture:purple_curtain> : 10,
    <item:another_furniture:purple_lamp> : 10,
    <item:another_furniture:purple_sofa> : 10,
    <item:another_furniture:purple_stool> : 5,
    <item:another_furniture:purple_tall_stool> : 5,
    <item:another_furniture:red_curtain> : 10,
    <item:another_furniture:red_lamp> : 10,
    <item:another_furniture:red_sofa> : 10,
    <item:another_furniture:red_stool> : 5,
    <item:another_furniture:red_tall_stool> : 5,
    <item:another_furniture:service_bell> : 225,
    <item:another_furniture:spruce_bench> : 2,
    <item:another_furniture:spruce_chair> : 1,
    <item:another_furniture:spruce_drawer> : 2,
    <item:another_furniture:spruce_planter_box> : 2,
    <item:another_furniture:spruce_shelf> : 1,
    <item:another_furniture:spruce_shutter> : 1,
    <item:another_furniture:spruce_table> : 1,
    <item:another_furniture:warped_bench> : 2,
    <item:another_furniture:warped_chair> : 1,
    <item:another_furniture:warped_drawer> : 2,
    <item:another_furniture:warped_planter_box> : 2,
    <item:another_furniture:warped_shelf> : 1,
    <item:another_furniture:warped_shutter> : 1,
    <item:another_furniture:warped_table> : 1,
    <item:another_furniture:white_curtain> : 10,
    <item:another_furniture:white_lamp> : 10,
    <item:another_furniture:white_sofa> : 10,
    <item:another_furniture:white_stool> : 5,
    <item:another_furniture:white_tall_stool> : 5,
    <item:another_furniture:yellow_curtain> : 10,
    <item:another_furniture:yellow_lamp> : 10,
    <item:another_furniture:yellow_sofa> : 10,
    <item:another_furniture:yellow_stool> : 5,
    <item:another_furniture:yellow_tall_stool> : 5
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