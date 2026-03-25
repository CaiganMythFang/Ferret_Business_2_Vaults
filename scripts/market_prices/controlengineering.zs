import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:controlengineering:bus_interface> : 1600,
    <item:controlengineering:bus_relay> : 150,
    <item:controlengineering:bus_wire_coil> : 1075,
    <item:controlengineering:clock_edge> : 1300,
    <item:controlengineering:clock_free> : 425,
    <item:controlengineering:clock_state> : 425,
    <item:controlengineering:control_panel> : 2975,
    <item:controlengineering:empty_tape> : 1200,
    <item:controlengineering:key> : 0,
    <item:controlengineering:keypunch> : 1625,
    <item:controlengineering:line_access> : 1475,
    <item:controlengineering:lock> : 0,
    <item:controlengineering:logic_cabinet> : 14225,
    <item:controlengineering:logic_workbench> : 1775,
    <item:controlengineering:panel_cnc> : 4825,
    <item:controlengineering:panel_designer> : 2700,
    <item:controlengineering:panel_top> : 1175,
    <item:controlengineering:rs_remapper> : 500,
    <item:controlengineering:sequencer> : 1675,
    <item:controlengineering:logic_schematic> : 75
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
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
}