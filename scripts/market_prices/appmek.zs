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
    <item:appmek:chemical_storage_cell_256k> : 587800,
    <item:appmek:portable_chemical_storage_cell_256k> : 604050,
    <item:appmek:chemical_storage_cell_64k> : 179750,
    <item:appmek:portable_chemical_storage_cell_64k> : 196000,
    <item:appmek:chemical_storage_cell_16k> : 51300,
    <item:appmek:portable_chemical_storage_cell_16k> : 67550,
    <item:appmek:chemical_p2p_tunnel> : 3050,
    <item:appmek:chemical_storage_cell_1k> : 4050,
    <item:appmek:chemical_storage_cell_4k> : 11475,
    <item:appmek:portable_chemical_storage_cell_1k> : 20300,
    <item:appmek:portable_chemical_storage_cell_4k> : 27725,
    <item:appmek:chemical_cell_housing> : 875
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