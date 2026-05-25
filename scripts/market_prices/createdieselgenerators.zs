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
    <item:createdieselgenerators:huge_diesel_engine> : 54700,
    <item:createdieselgenerators:basin_lid> : 2775,
    <item:createdieselgenerators:diesel_engine> : 475,
    <item:createdieselgenerators:distillation_controller> : 775,
    <item:createdieselgenerators:engine_silencer> : 600,
    <item:createdieselgenerators:engine_turbocharger> : 1775,
    <item:createdieselgenerators:gasoline_bucket> : 2350,
    <item:createdieselgenerators:large_diesel_engine> : 725,
    <item:createdieselgenerators:lighter> : 650,
    <item:createdieselgenerators:oil_scanner> : 3650,
    <item:createdieselgenerators:pumpjack_bearing> : 1125,
    <item:createdieselgenerators:pumpjack_crank> : 625,
    <item:createdieselgenerators:pumpjack_head> : 350,
    <item:createdieselgenerators:pumpjack_hole> : 2000,
    <item:createdieselgenerators:asphalt_block> : 10,
    <item:createdieselgenerators:asphalt_slab> : 5,
    <item:createdieselgenerators:asphalt_stairs> : 10,
    <item:createdieselgenerators:biodiesel_bucket> : 800,
    <item:createdieselgenerators:canister> : 725,
    <item:createdieselgenerators:chip_wood_beam> : 1,
    <item:createdieselgenerators:chip_wood_block> : 1,
    <item:createdieselgenerators:chip_wood_slab> : 1,
    <item:createdieselgenerators:chip_wood_stairs> : 1,
    <item:createdieselgenerators:crude_oil_bucket> : 775,
    <item:createdieselgenerators:diesel_bucket> : 800,
    <item:createdieselgenerators:engine_piston> : 25,
    <item:createdieselgenerators:ethanol_bucket> : 875,
    <item:createdieselgenerators:kelp_handle> : 50,
    <item:createdieselgenerators:oil_barrel> : 450,
    <item:createdieselgenerators:plant_oil_bucket> : 700,
    <item:createdieselgenerators:wood_chip> : 1
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