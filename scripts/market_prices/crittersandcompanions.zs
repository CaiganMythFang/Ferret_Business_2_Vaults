import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:crittersandcompanions:clam> : 5,
    <item:crittersandcompanions:dumbo_octopus_bucket> : 700,
    <item:crittersandcompanions:ferret_spawn_egg> : 250,
    <item:crittersandcompanions:koi_fish_bucket> : 700,
    <item:crittersandcompanions:pearl> : 25,
    <item:crittersandcompanions:pearl_necklace_1> : 100,
    <item:crittersandcompanions:pearl_necklace_2> : 125,
    <item:crittersandcompanions:pearl_necklace_3> : 150,
    <item:crittersandcompanions:sea_bunny_bucket> : 700
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