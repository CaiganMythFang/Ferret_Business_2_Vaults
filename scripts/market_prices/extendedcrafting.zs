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
    <item:extendedcrafting:advanced_auto_table> : 0,
    <item:extendedcrafting:advanced_catalyst> : 0,
    <item:extendedcrafting:advanced_component> : 0,
    <item:extendedcrafting:advanced_table> : 0,
    <item:extendedcrafting:basic_auto_table> : 0,
    <item:extendedcrafting:basic_catalyst> : 0,
    <item:extendedcrafting:basic_component> : 0,
    <item:extendedcrafting:basic_table> : 0,
    <item:extendedcrafting:enhanced_ender_ingot> : 0,
    <item:extendedcrafting:enhanced_ender_component> : 0,
    <item:extendedcrafting:enhanced_ender_catalyst> : 0,
    <item:extendedcrafting:ender_star_block> : 0,
    <item:extendedcrafting:ender_star> : 0,
    <item:extendedcrafting:ender_nugget> : 0,
    <item:extendedcrafting:ender_ingot_block> : 0,
    <item:extendedcrafting:ender_ingot> : 0,
    <item:extendedcrafting:ender_crafter> : 0,
    <item:extendedcrafting:crystaltine_ingot> : 0,
    <item:extendedcrafting:crystaltine_nugget> : 0,
    <item:extendedcrafting:elite_auto_table> : 0,
    <item:extendedcrafting:elite_catalyst> : 0,
    <item:extendedcrafting:elite_component> : 0,
    <item:extendedcrafting:elite_table> : 0,
    <item:extendedcrafting:ender_alternator> : 0,
    <item:extendedcrafting:ender_catalyst> : 0,
    <item:extendedcrafting:ender_component> : 0,
    <item:extendedcrafting:crystaltine_component> : 0,
    <item:extendedcrafting:crystaltine_catalyst> : 0,
    <item:extendedcrafting:crystaltine_block> : 0,
    <item:extendedcrafting:crafting_core> : 0,
    <item:extendedcrafting:compressor> : 0,
    <item:extendedcrafting:black_iron_slate> : 0,
    <item:extendedcrafting:black_iron_nugget> : 0,
    <item:extendedcrafting:black_iron_ingot> : 0,
    <item:extendedcrafting:black_iron_block> : 0,
    <item:extendedcrafting:frame> : 0,
    <item:extendedcrafting:enhanced_ender_ingot_block> : 0,
    <item:extendedcrafting:enhanced_ender_nugget> : 0,
    <item:extendedcrafting:handheld_table> : 0,
    <item:extendedcrafting:luminessence> : 0,
    <item:extendedcrafting:luminessence_block> : 0,
    <item:extendedcrafting:nether_star_block> : 0,
    <item:extendedcrafting:singularity> : 0,
    <item:extendedcrafting:ultimate_singularity> : 0,
    <item:extendedcrafting:ultimate_table> : 0,
    <item:extendedcrafting:ultimate_component> : 0,
    <item:extendedcrafting:ultimate_catalyst> : 0,
    <item:extendedcrafting:ultimate_auto_table> : 0,
    <item:extendedcrafting:the_ultimate_nugget> : 0,
    <item:extendedcrafting:the_ultimate_ingot> : 0,
    <item:extendedcrafting:recipe_maker> : 0,
    <item:extendedcrafting:pedestal> : 0,
    <item:extendedcrafting:the_ultimate_component> : 0,
    <item:extendedcrafting:the_ultimate_catalyst> : 0,
    <item:extendedcrafting:the_ultimate_block> : 0,
    <item:extendedcrafting:redstone_nugget> : 0,
    <item:extendedcrafting:redstone_ingot_block> : 0,
    <item:extendedcrafting:redstone_ingot> : 0,
    <item:extendedcrafting:redstone_component> : 0,
    <item:extendedcrafting:redstone_catalyst> : 0
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