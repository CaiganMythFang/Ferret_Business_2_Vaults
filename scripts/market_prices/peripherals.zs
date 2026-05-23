import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:peripherals:enchanting_interface> : 0,
    <item:peripherals:anvil_interface> : 36825,
    <item:peripherals:grinder> : 50775,
    <item:peripherals:spawner_interface> : 62625,
    <item:peripherals:trading_interface> : 66950,
    <item:peripherals:xp_bottler> : 33100,
    <item:peripherals:xp_collector> : 34225,
    <item:peripherals:advanced_disk_raid> : 4200,
    <item:peripherals:beehive_interface> : 11050,
    <item:peripherals:disk_raid> : 75,
    <item:peripherals:grindstone_interface> : 10325,
    <item:peripherals:induction_charger> : 350,
    <item:peripherals:loom_interface> : 14300,
    <item:peripherals:magnetic_card_manipulator> : 125,
    <item:peripherals:spawner_card> : 6325,
    <item:peripherals:magnetic_card> : 100

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