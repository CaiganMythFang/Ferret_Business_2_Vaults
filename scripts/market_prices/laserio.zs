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
    <item:laserio:card_energy> : 1325,
    <item:laserio:card_fluid> : 1900,
    <item:laserio:card_holder> : 1700,
    <item:laserio:card_item> : 1275,
    <item:laserio:card_redstone> : 1275,
    <item:laserio:filter_basic> : 175,
    <item:laserio:filter_count> : 325,
    <item:laserio:filter_mod> : 200,
    <item:laserio:filter_tag> : 175,
    <item:laserio:laser_connector> : 2075,
    <item:laserio:laser_node> : 10375,
    <item:laserio:laser_wrench> : 750,
    <item:laserio:logic_chip> : 600,
    <item:laserio:logic_chip_raw> : 600,
    <item:laserio:overclocker_card> : 1850,
    <item:laserio:overclocker_node> : 1250
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