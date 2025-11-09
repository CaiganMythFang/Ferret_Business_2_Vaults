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
    <item:computercraft:printed_book> : 25,
    <item:computercraft:pocket_computer_advanced> : 137825,
    <item:computercraft:pocket_computer_normal> : 119325,
    <item:computercraft:computer_advanced> : 71125,
    <item:computercraft:computer_normal> : 52625,
    <item:computercraft:turtle_advanced> : 63650,
    <item:computercraft:turtle_normal> : 54200,
    <item:computercraft:cable> : 2,
    <item:computercraft:disk_drive> : 25,
    <item:computercraft:monitor_advanced> : 1350,
    <item:computercraft:printer> : 25,
    <item:computercraft:speaker> : 25,
    <item:computercraft:wired_modem> : 11200,
    <item:computercraft:wired_modem_full> : 11200,
    <item:computercraft:wireless_modem_advanced> : 6225,
    <item:computercraft:wireless_modem_normal> : 25,
    <item:computercraft:disk> : 10,
    <item:computercraft:monitor_normal> : 10
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