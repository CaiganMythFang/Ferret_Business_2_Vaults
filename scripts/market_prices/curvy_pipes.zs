import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:curvy_pipes:redstone_cable> : 5,
    <item:curvy_pipes:tiny_item_pipe> : 10,
    <item:curvy_pipes:small_item_pipe> : 50,
    <item:curvy_pipes:medium_item_pipe> : 150,
    <item:curvy_pipes:large_item_pipe> : 650,
    <item:curvy_pipes:huge_item_pipe> : 2550,
    <item:curvy_pipes:tiny_fluid_pipe> : 50,
    <item:curvy_pipes:small_fluid_pipe> : 200,
    <item:curvy_pipes:medium_fluid_pipe> : 800,
    <item:curvy_pipes:large_fluid_pipe> : 3200,
    <item:curvy_pipes:huge_fluid_pipe> : 12800,
    <item:curvy_pipes:tiny_energy_pipe> : 875,
    <item:curvy_pipes:small_energy_pipe> : 3500,
    <item:curvy_pipes:medium_energy_pipe> : 14000,
    <item:curvy_pipes:large_energy_pipe> : 56000,
    <item:curvy_pipes:huge_energy_pipe> : 224000
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