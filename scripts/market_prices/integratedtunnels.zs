import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:integratedtunnels:part_exporter_world_block> : 22550,
    <item:integratedtunnels:part_importer_world_block> : 22550,
    <item:integratedtunnels:part_player_simulator> : 88700,
    <item:integratedtunnels:part_exporter_energy> : 2650,
    <item:integratedtunnels:part_exporter_fluid> : 1750,
    <item:integratedtunnels:part_exporter_item> : 1475,
    <item:integratedtunnels:part_exporter_world_energy> : 18425,
    <item:integratedtunnels:part_exporter_world_fluid> : 17525,
    <item:integratedtunnels:part_exporter_world_item> : 17350,
    <item:integratedtunnels:part_importer_energy> : 2675,
    <item:integratedtunnels:part_importer_fluid> : 1750,
    <item:integratedtunnels:part_importer_item> : 1600,
    <item:integratedtunnels:part_importer_world_energy> : 18425,
    <item:integratedtunnels:part_importer_world_fluid> : 17525,
    <item:integratedtunnels:part_importer_world_item> : 17350,
    <item:integratedtunnels:part_interface_energy> : 1725,
    <item:integratedtunnels:part_interface_filter_energy> : 4575,
    <item:integratedtunnels:part_interface_filter_item> : 2425,
    <item:integratedtunnels:part_interface_fluid> : 2750,
    <item:integratedtunnels:part_interface_filter_fluid> : 825,
    <item:integratedtunnels:part_interface_item> : 650
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