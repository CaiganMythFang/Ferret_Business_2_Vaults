import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:farmersrespite:black_cod> : 25,
    <item:farmersrespite:black_tea> : 10,
    <item:farmersrespite:black_tea_leaves> : 5,
    <item:farmersrespite:blazing_chili> : 50,
    <item:farmersrespite:coffee> : 10,
    <item:farmersrespite:coffee_beans> : 5,
    <item:farmersrespite:coffee_berries> : 5,
    <item:farmersrespite:coffee_cake> : 50,
    <item:farmersrespite:coffee_cake_slice> : 10,
    <item:farmersrespite:dandelion_tea> : 10,
    <item:farmersrespite:green_tea> : 10,
    <item:farmersrespite:green_tea_cookie> : 2,
    <item:farmersrespite:green_tea_leaves> : 5,
    <item:farmersrespite:kettle> : 1175,
    <item:farmersrespite:long_apple_cider> : 10,
    <item:farmersrespite:long_black_tea> : 10,
    <item:farmersrespite:long_coffee> : 10,
    <item:farmersrespite:long_dandelion_tea> : 10,
    <item:farmersrespite:long_green_tea> : 10,
    <item:farmersrespite:long_rose_hip_tea> : 10,
    <item:farmersrespite:long_yellow_tea> : 10,
    <item:farmersrespite:nether_wart_sourdough> : 25,
    <item:farmersrespite:purulent_tea> : 25,
    <item:farmersrespite:rose_hip_pie> : 76,
    <item:farmersrespite:rose_hip_pie_slice> : 25,
    <item:farmersrespite:rose_hip_tea> : 5,
    <item:farmersrespite:rose_hips> : 2,
    <item:farmersrespite:strong_apple_cider> : 50,
    <item:farmersrespite:strong_black_tea> : 50,
    <item:farmersrespite:strong_coffee> : 50,
    <item:farmersrespite:strong_green_tea> : 50,
    <item:farmersrespite:strong_purulent_tea> : 75,
    <item:farmersrespite:strong_rose_hip_tea> : 50,
    <item:farmersrespite:strong_yellow_tea> : 50,
    <item:farmersrespite:tea_curry> : 50,
    <item:farmersrespite:tea_seeds> : 5,
    <item:farmersrespite:wild_tea_bush> : 5,
    <item:farmersrespite:yellow_tea> : 10,
    <item:farmersrespite:yellow_tea_leaves> : 5
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