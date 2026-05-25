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
    <item:mekanismgenerators:bio_generator> : 1575,
    <item:mekanismgenerators:advanced_solar_generator> : 58625,
    <item:mekanismgenerators:module_solar_recharging_unit> : 0,
    <item:mekanismgenerators:tritium_bucket> : 0,
    <item:mekanismgenerators:deuterium_bucket> : 0,
    <item:mekanismgenerators:fusion_fuel_bucket> : 0,
    <item:mekanismgenerators:module_geothermal_generator_unit> : 0,
    <item:mekanismgenerators:bioethanol_bucket> : 0,
    <item:mekanismgenerators:fusion_reactor_controller> : 461900,
    <item:mekanismgenerators:fusion_reactor_frame> : 10150,
    <item:mekanismgenerators:fusion_reactor_logic_adapter> : 10150,
    <item:mekanismgenerators:fusion_reactor_port> : 22900,
    <item:mekanismgenerators:gas_burning_generator> : 70300,
    <item:mekanismgenerators:solar_generator> : 14400,
    <item:mekanismgenerators:control_rod_assembly> : 3975,
    <item:mekanismgenerators:electromagnetic_coil> : 15950,
    <item:mekanismgenerators:fission_fuel_assembly> : 3375,
    <item:mekanismgenerators:fission_reactor_casing> : 450,
    <item:mekanismgenerators:fission_reactor_logic_adapter> : 500,
    <item:mekanismgenerators:fission_reactor_port> : 1750,
    <item:mekanismgenerators:heat_generator> : 1075,
    <item:mekanismgenerators:hohlraum> : 2700,
    <item:mekanismgenerators:laser_focus_matrix> : 675,
    <item:mekanismgenerators:reactor_glass> : 575,
    <item:mekanismgenerators:rotational_complex> : 3600,
    <item:mekanismgenerators:saturating_condenser> : 4050,
    <item:mekanismgenerators:solar_panel> : 800,
    <item:mekanismgenerators:turbine_blade> : 1050,
    <item:mekanismgenerators:turbine_rotor> : 1825,
    <item:mekanismgenerators:turbine_valve> : 1075,
    <item:mekanismgenerators:turbine_vent> : 550,
    <item:mekanismgenerators:wind_generator> : 23800,
    <item:mekanismgenerators:turbine_casing> : 275
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