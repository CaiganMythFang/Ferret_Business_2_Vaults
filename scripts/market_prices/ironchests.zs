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
    <item:ironchests:netherite_chest> : 16950,
    <item:ironchests:netherite_chest_upgrade> : 8875,
    <item:ironchests:diamond_chest> : 12400,
    <item:ironchests:diamond_chest_upgrade> : 4325,
    <item:ironchests:diamond_dolly> : 7225,
    <item:ironchests:gold_chest> : 8100,
    <item:ironchests:gold_chest_upgrade> : 6225,
    <item:ironchests:iron_chest> : 1900,
    <item:ironchests:iron_chest_upgrade> : 1125,
    <item:ironchests:key> : 3450,
    <item:ironchests:lock> : 4125,
    <item:ironchests:blank_chest_upgrade> : 25,
    <item:ironchests:copper_chest> : 800,
    <item:ironchests:copper_chest_upgrade> : 825,
    <item:ironchests:iron_dolly> : 975

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