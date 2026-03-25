import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:botanicalmachinery:mana_battery_creative> : 2058925,
    <item:botanicalmachinery:mana_battery> : 268925,
    <item:botanicalmachinery:alfheim_market> : 11225,
    <item:botanicalmachinery:industrial_agglomeration_factory> : 11225,
    <item:botanicalmachinery:mechanical_daisy> : 20400,
    <item:botanicalmachinery:mana_emerald> : 1110,
    <item:botanicalmachinery:mana_emerald_block> : 10000,
    <item:botanicalmachinery:mechanical_apothecary> : 5400,
    <item:botanicalmachinery:mechanical_brewery> : 8075,
    <item:botanicalmachinery:mechanical_mana_pool> : 10875,
    <item:botanicalmachinery:mechanical_runic_altar> : 7275
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