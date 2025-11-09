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
    <item:appbot:mana_storage_cell_256k> : 647625,
    <item:appbot:portable_mana_storage_cell_256k> : 663875,
    <item:appbot:mana_storage_cell_64k> : 239575,
    <item:appbot:portable_mana_storage_cell_64k> : 255825,
    <item:appbot:mana_storage_cell_16k> : 111125,
    <item:appbot:portable_mana_storage_cell_16k> : 127375,
    <item:appbot:mana_cell_housing> : 60700,
    <item:appbot:mana_storage_cell_1k> : 63875,
    <item:appbot:mana_storage_cell_4k> : 71300,
    <item:appbot:portable_mana_storage_cell_1k> : 80125,
    <item:appbot:portable_mana_storage_cell_4k> : 87550,
    <item:appbot:fluix_mana_pool> : 4375,
    <item:appbot:mana_p2p_tunnel> : 3050
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