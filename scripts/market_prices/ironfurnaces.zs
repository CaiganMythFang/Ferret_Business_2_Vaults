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
    <item:ironfurnaces:item_spooky> : 5,
    <item:ironfurnaces:item_xmas> : 10,
    <item:ironfurnaces:augment_smoking> : 25,
    <item:ironfurnaces:augment_speed> : 25,
    <item:ironfurnaces:augment_xp> : 125,
    <item:ironfurnaces:heater> : 250,
    <item:ironfurnaces:item_heater> : 525,
    <item:ironfurnaces:item_copy> : 600,
    <item:ironfurnaces:augment_blasting> : 1150,
    <item:ironfurnaces:iron_furnace> : 1700,
    <item:ironfurnaces:gold_furnace> : 9200,
    <item:ironfurnaces:diamond_furnace> : 26825,
    <item:ironfurnaces:rainbow_plating> : 26825,
    <item:ironfurnaces:emerald_furnace> : 36802,
    <item:ironfurnaces:crystal_furnace> : 39350,
    <item:ironfurnaces:obsidian_furnace> : 40825,
    <item:ironfurnaces:netherite_furnace> : 96700,
    <item:ironfurnaces:augment_factory> : 105050,
    <item:ironfurnaces:augment_generator> : 106150,
    <item:ironfurnaces:rainbow_core> : 295050,
    <item:ironfurnaces:item_linker> : 304150,
    <item:ironfurnaces:million_furnace> : 509650,
    <item:ironfurnaces:upgrade_unobtainium> : 0,
    <item:ironfurnaces:vibranium_furnace> : 0,
    <item:ironfurnaces:unobtainium_furnace> : 0,
    <item:ironfurnaces:upgrade_iron> : 0,
    <item:ironfurnaces:upgrade_copper> : 0,
    <item:ironfurnaces:upgrade_gold2> : 0,
    <item:ironfurnaces:silver_furnace> : 0,
    <item:ironfurnaces:allthemodium_furnace> : 0,
    <item:ironfurnaces:upgrade_vibranium> : 0,
    <item:ironfurnaces:copper_furnace> : 0,
    <item:ironfurnaces:upgrade_iron2> : 0,
    <item:ironfurnaces:upgrade_silver> : 0,
    <item:ironfurnaces:upgrade_obsidian2> : 0,
    <item:ironfurnaces:rainbow_coal> : 0,
    <item:ironfurnaces:upgrade_netherite> : 0,
    <item:ironfurnaces:upgrade_allthemodium> : 0,
    <item:ironfurnaces:upgrade_silver2> : 0,
    <item:ironfurnaces:upgrade_gold> : 0,
    <item:ironfurnaces:upgrade_diamond> : 0,
    <item:ironfurnaces:upgrade_obsidian> : 0,
    <item:ironfurnaces:upgrade_emerald> : 0,
    <item:ironfurnaces:upgrade_crystal> : 0
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