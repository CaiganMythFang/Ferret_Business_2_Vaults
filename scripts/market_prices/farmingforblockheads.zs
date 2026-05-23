import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:farmingforblockheads:fertilized_farmland_healthy> : 1,
    <item:farmingforblockheads:fertilized_farmland_healthy_stable> : 1,
    <item:farmingforblockheads:fertilized_farmland_rich> : 1,
    <item:farmingforblockheads:fertilized_farmland_rich_stable> : 1,
    <item:farmingforblockheads:fertilized_farmland_stable> : 1,
    <item:farmingforblockheads:feeding_trough> : 650,
    <item:farmingforblockheads:market> : 3425,
    <item:farmingforblockheads:chicken_nest> : 50,
    <item:farmingforblockheads:green_fertilizer> : 50,
    <item:farmingforblockheads:red_fertilizer> : 50,
    <item:farmingforblockheads:yellow_fertilizer> : 50
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