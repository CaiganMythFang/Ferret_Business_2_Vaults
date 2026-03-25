import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:modularrouters:sender_module_3> : 199175,
    <item:modularrouters:vacuum_module> : 14350,
    <item:modularrouters:activator_module> : 1725,
    <item:modularrouters:blank_module> : 1525,
    <item:modularrouters:blank_upgrade> : 1300,
    <item:modularrouters:blast_upgrade> : 2300,
    <item:modularrouters:bulk_item_filter> : 5775,
    <item:modularrouters:detector_module> : 1675,
    <item:modularrouters:distributor_module> : 6475,
    <item:modularrouters:dropper_module> : 1543,
    <item:modularrouters:energy_distributor_module> : 9600,
    <item:modularrouters:energy_output_module> : 3100,
    <item:modularrouters:energy_upgrade> : 2575,
    <item:modularrouters:extruder_module_1> : 4600,
    <item:modularrouters:filter_round_robin_augment> : 3175,
    <item:modularrouters:flinger_module> : 1575,
    <item:modularrouters:fluid_module> : 3100,
    <item:modularrouters:fluid_module_2> : 3100,
    <item:modularrouters:inspection_filter> : 5825,
    <item:modularrouters:mimic_augment> : 575,
    <item:modularrouters:mod_filter> : 5800,
    <item:modularrouters:placer_module> : 1550,
    <item:modularrouters:puller_module_1> : 3575,
    <item:modularrouters:puller_module_2> : 6475,
    <item:modularrouters:pushing_augment> : 925,
    <item:modularrouters:range_down_augment> : 200,
    <item:modularrouters:range_up_augment> : 200,
    <item:modularrouters:redstone_augment> : 525,
    <item:modularrouters:regex_filter> : 5925,
    <item:modularrouters:regulator_augment> : 1025,
    <item:modularrouters:security_upgrade> : 1575,
    <item:modularrouters:sender_module_1> : 1625,
    <item:modularrouters:sender_module_2> : 5225,
    <item:modularrouters:speed_upgrade> : 750,
    <item:modularrouters:stack_augment> : 2125,
    <item:modularrouters:sync_upgrade> : 75,
    <item:modularrouters:void_module> : 4375,
    <item:modularrouters:xp_vacuum_augment> : 500,
    <item:modularrouters:augment_core> : 475,
    <item:modularrouters:breaker_module> : 1525,
    <item:modularrouters:camouflage_upgrade> : 1325,
    <item:modularrouters:extruder_module_2> : 1525,
    <item:modularrouters:fast_pickup_augment> : 475,
    <item:modularrouters:fluid_upgrade> : 650,
    <item:modularrouters:modular_router> : 1475,
    <item:modularrouters:muffler_upgrade> : 325,
    <item:modularrouters:pickup_delay_augment> : 500,
    <item:modularrouters:stack_upgrade> : 1375
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