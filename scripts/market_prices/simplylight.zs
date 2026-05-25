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