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
    <item:advancedperipherals:inventory_manager> : 1711000,
    <item:advancedperipherals:block_reader> : 28450,
    <item:advancedperipherals:geo_scanner> : 34750,
    <item:advancedperipherals:me_bridge> : 34000,
    <item:advancedperipherals:ar_controller> : 16100,
    <item:advancedperipherals:ar_goggles> : 2450,
    <item:advancedperipherals:chat_box> : 16675,
    <item:advancedperipherals:energy_detector> : 17375,
    <item:advancedperipherals:environment_detector> : 16050,
    <item:advancedperipherals:memory_card> : 1925,
    <item:advancedperipherals:nbt_storage> : 16750,
    <item:advancedperipherals:peripheral_casing> : 16000,
    <item:advancedperipherals:player_detector> : 16100,
    <item:advancedperipherals:redstone_integrator> : 17000,
    <item:advancedperipherals:computer_tool> : 300
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