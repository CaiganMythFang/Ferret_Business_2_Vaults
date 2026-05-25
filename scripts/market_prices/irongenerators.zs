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
    <item:irongenerators:platin_generator> : 0,
    <item:irongenerators:refined_obsidian_generator> : 0,
    <item:irongenerators:uranium_generator> : 0,
    <item:irongenerators:steel_generator> : 0,
    <item:irongenerators:obsidian_generator> : 0,
    <item:irongenerators:osmium_generator> : 0,
    <item:irongenerators:bronze_generator> : 0,
    <item:irongenerators:netherrack_generator> : 0,
    <item:irongenerators:certus_quartz_generator> : 0,
    <item:irongenerators:unobtainium_generator> : 0,
    <item:irongenerators:tin_generator> : 0,
    <item:irongenerators:stone_generator> : 0,
    <item:irongenerators:enderium_generator> : 0,
    <item:irongenerators:skystone_generator> : 0,
    <item:irongenerators:signalum_generator> : 0,
    <item:irongenerators:copper_generator> : 0,
    <item:irongenerators:quartz_enriched_iron_generator> : 0,
    <item:irongenerators:infinity_generator> : 0,
    <item:irongenerators:invar_generator> : 0,
    <item:irongenerators:allthemodium_generator> : 0,
    <item:irongenerators:lead_generator> : 0,
    <item:irongenerators:dirt_generator> : 0,
    <item:irongenerators:vibranium_generator> : 0,
    <item:irongenerators:netherite_generator> : 412525,
    <item:irongenerators:diamond_generator> : 51225,
    <item:irongenerators:gold_generator> : 25800,
    <item:irongenerators:iron_generator> : 400
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