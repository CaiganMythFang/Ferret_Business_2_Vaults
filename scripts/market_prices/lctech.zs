import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:lctech:battery> : 650,
    <item:lctech:battery_large> : 825,
    <item:lctech:battery_shop> : 1900,
    <item:lctech:diamond_tank> : 7200,
    <item:lctech:energy_capacity_upgrade_1> : 875,
    <item:lctech:energy_capacity_upgrade_2> : 1550,
    <item:lctech:energy_capacity_upgrade_3> : 3350,
    <item:lctech:energy_trader_interface> : 3650,
    <item:lctech:energy_trader_server> : 3175,
    <item:lctech:fluid_capacity_upgrade_2> : 1575,
    <item:lctech:fluid_capacity_upgrade_3> : 3375,
    <item:lctech:fluid_tap> : 1275,
    <item:lctech:fluid_tap_bundle> : 4225,
    <item:lctech:fluid_trader_interface> : 4150,
    <item:lctech:fluid_trader_server_lrg> : 7725,
    <item:lctech:fluid_trader_server_med> : 5925,
    <item:lctech:fluid_trader_server_sml> : 4100,
    <item:lctech:fluid_trader_server_xlrg> : 9525,
    <item:lctech:gold_tank> : 2700,
    <item:lctech:fluid_capacity_upgrade_1> : 900,
    <item:lctech:iron_tank> : 900

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