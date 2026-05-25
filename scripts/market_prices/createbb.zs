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
    <item:createbb:acetic_anhydride_bucket> : 875,
    <item:createbb:aluminosilicate_catalyst> : 1600,
    <item:createbb:ammonia_bucket> : 825,
    <item:createbb:blue_meth> : 50,
    <item:createbb:blue_meth_tray> : 725,
    <item:createbb:cyanide> : 5,
    <item:createbb:liquid_blue_methamphetamine_bucket> : 850,
    <item:createbb:liquid_methamphetamine_bucket> : 750,
    <item:createbb:methylamine_bucket> : 800,
    <item:createbb:phenylacetic_acid_bucket> : 825,
    <item:createbb:phenylacetone_bucket> : 850,
    <item:createbb:white_meth> : 25,
    <item:createbb:white_meth_tray> : 700,
    <item:createbb:aluminosilicate_bit> : 50,
    <item:createbb:aluminosilicate_chunk> : 400,
    <item:createbb:brass_call_bell> : 100,
    <item:createbb:brine> : 1,
    <item:createbb:copper_zinc_catalyst> : 450,
    <item:createbb:crushed_copper> : 100,
    <item:createbb:crushed_zinc> : 125,
    <item:createbb:ephedra> : 5,
    <item:createbb:ephedra_seeds> : 5,
    <item:createbb:hydrogen_bucket> : 725,
    <item:createbb:iodine> : 1,
    <item:createbb:match> : 1,
    <item:createbb:methanol_bucket> : 775,
    <item:createbb:nitrogen> : 25,
    <item:createbb:oxygen_bucket> : 725,
    <item:createbb:pseudophedrine> : 5,
    <item:createbb:red_phosphorus> : 1,
    <item:createbb:sudafed> : 5,
    <item:createbb:sudafed_box> : 25,
    <item:createbb:trapped_brass_call_bell> : 110,
    <item:createbb:tray> : 675,
    <item:createbb:white_phosphorus> : 1
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