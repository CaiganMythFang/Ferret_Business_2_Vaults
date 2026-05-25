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
    <item:littlelogistics:chunk_loader_barge> : 0,
    <item:littlelogistics:chunk_loader_car> : 0,
    <item:littlelogistics:creative_capacitor> : 84600,
    <item:littlelogistics:automatic_switch_rail> : 175,
    <item:littlelogistics:automatic_tee_junction_rail> : 175,
    <item:littlelogistics:barge> : 1550,
    <item:littlelogistics:chest_car> : 1525,
    <item:littlelogistics:energy_locomotive> : 12975,
    <item:littlelogistics:energy_tug> : 11725,
    <item:littlelogistics:fishing_barge> : 2450,
    <item:littlelogistics:fluid_barge> : 2450,
    <item:littlelogistics:fluid_car> : 1525,
    <item:littlelogistics:fluid_hopper> : 1375,
    <item:littlelogistics:guide_rail_corner> : 225,
    <item:littlelogistics:guide_rail_tug> : 100,
    <item:littlelogistics:locomotive_route> : 200,
    <item:littlelogistics:rapid_hopper> : 19775,
    <item:littlelogistics:receiver_component> : 100,
    <item:littlelogistics:seater_barge> : 1775,
    <item:littlelogistics:seater_car> : 1525,
    <item:littlelogistics:steam_locomotive> : 3925,
    <item:littlelogistics:tug> : 2675,
    <item:littlelogistics:tug_route> : 200,
    <item:littlelogistics:vessel_charger> : 10175,
    <item:littlelogistics:vessel_detector> : 10,
    <item:littlelogistics:barge_dock> : 350,
    <item:littlelogistics:car_dock_rail> : 75,
    <item:littlelogistics:conductors_wrench> : 550,
    <item:littlelogistics:junction_rail> : 75,
    <item:littlelogistics:locomotive_dock_rail> : 75,
    <item:littlelogistics:spring> : 2,
    <item:littlelogistics:switch_rail> : 75,
    <item:littlelogistics:tee_junction_rail> : 75,
    <item:littlelogistics:transmitter_component> : 25,
    <item:littlelogistics:tug_dock> : 350

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