import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:waystones:black_sharestone> : 6800,
    <item:waystones:blue_sharestone> : 6800,
    <item:waystones:brown_sharestone> : 6800,
    <item:waystones:cyan_sharestone> : 6800,
    <item:waystones:gray_sharestone> : 6800,
    <item:waystones:green_sharestone> : 6800,
    <item:waystones:light_blue_sharestone> : 6800,
    <item:waystones:light_gray_sharestone> : 6800,
    <item:waystones:lime_sharestone> : 6800,
    <item:waystones:magenta_sharestone> : 6800,
    <item:waystones:mossy_waystone> : 11000,
    <item:waystones:orange_sharestone> : 6800,
    <item:waystones:pink_sharestone> : 6800,
    <item:waystones:purple_sharestone> : 6800,
    <item:waystones:red_sharestone> : 6800,
    <item:waystones:sandy_waystone> : 11000,
    <item:waystones:sharestone> : 6800,
    <item:waystones:warp_dust> : 1225,
    <item:waystones:warp_plate> : 4975,
    <item:waystones:warp_stone> : 1080,
    <item:waystones:waystone> : 11000,
    <item:waystones:white_sharestone> : 6800,
    <item:waystones:yellow_sharestone> : 6800
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