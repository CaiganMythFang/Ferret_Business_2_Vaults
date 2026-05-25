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
    <item:mininggadgets:upgrade_battery_3> : 37250,
    <item:mininggadgets:upgrade_efficiency_4> : 52050,
    <item:mininggadgets:upgrade_efficiency_5> : 57850,
    <item:mininggadgets:upgrade_fortune_2> : 42050,
    <item:mininggadgets:upgrade_fortune_3> : 65975,
    <item:mininggadgets:upgrade_magnet> : 37086,
    <item:mininggadgets:upgrade_three_by_three> : 26875,
    <item:mininggadgets:mininggadget> : 10600,
    <item:mininggadgets:mininggadget_fancy> : 10600,
    <item:mininggadgets:mininggadget_simple> : 10600,
    <item:mininggadgets:upgrade_battery_1> : 6150,
    <item:mininggadgets:upgrade_battery_2> : 13150,
    <item:mininggadgets:upgrade_efficiency_2> : 13950,
    <item:mininggadgets:upgrade_efficiency_3> : 24150,
    <item:mininggadgets:upgrade_empty> : 2075,
    <item:mininggadgets:upgrade_fortune_1> : 22150,
    <item:mininggadgets:upgrade_range_1> : 8200,
    <item:mininggadgets:upgrade_range_2> : 14150,
    <item:mininggadgets:upgrade_range_3> : 24125,
    <item:mininggadgets:upgrade_silk> : 10050,
    <item:mininggadgets:modificationtable> : 3625,
    <item:mininggadgets:upgrade_efficiency_1> : 3750,
    <item:mininggadgets:upgrade_freezing> : 2250,
    <item:mininggadgets:upgrade_light_placer> : 2825,
    <item:mininggadgets:upgrade_void_junk> : 5850
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