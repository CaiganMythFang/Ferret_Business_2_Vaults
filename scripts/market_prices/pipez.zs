import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:pipez:infinity_upgrade> : 0,
    <item:pipez:ultimate_upgrade> : 65900,
    <item:pipez:advanced_upgrade> : 26000,
    <item:pipez:basic_upgrade> : 3800,
    <item:pipez:filter_destination_tool> : 450,
    <item:pipez:gas_pipe> : 50,
    <item:pipez:improved_upgrade> : 13600,
    <item:pipez:universal_pipe> : 75,
    <item:pipez:energy_pipe> : 25,
    <item:pipez:fluid_pipe> : 75,
    <item:pipez:item_pipe> : 25,
    <item:pipez:wrench> : 10
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