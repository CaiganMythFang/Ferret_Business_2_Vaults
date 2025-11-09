import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// This variable controls whether we are in the pack dev mode or release mode. In Pack Dev mode, all EMC/FMC values are enabled to help calculate EMC/FMC for other mods.
var release_mode = false;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:toms_storage:ts.adv_wireless_terminal> : 112550,
    <item:toms_storage:ts.crafting_terminal> : 33150,
    <item:toms_storage:ts.inventory_cable_connector> : 1350,
    <item:toms_storage:ts.inventory_cable_connector_filtered> : 5900,
    <item:toms_storage:ts.inventory_cable_connector_framed> : 1350,
    <item:toms_storage:ts.inventory_connector> : 950,
    <item:toms_storage:ts.inventory_hopper_basic> : 2625,
    <item:toms_storage:ts.level_emitter> : 275,
    <item:toms_storage:ts.storage_terminal> : 5575,
    <item:toms_storage:ts.wireless_terminal> : 12550,
    <item:toms_storage:ts.inventory_cable> : 75,
    <item:toms_storage:ts.inventory_cable_framed> : 75,
    <item:toms_storage:ts.inventory_proxy> : 300,
    <item:toms_storage:ts.paint_kit> : 400,
    <item:toms_storage:ts.trim> : 650
};

// For each item in the map, check if we're in release mode. If we are, anything below 26 EMC/FMC becomes unburnable for EMC
for item, value in priceTable {
    if (release_mode == true){
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