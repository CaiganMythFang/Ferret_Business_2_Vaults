import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:archers_paradox:blaze_arrow> : 5,
    <item:archers_paradox:challenge_arrow> : 525,
    <item:archers_paradox:diamond_arrow> : 450,
    <item:archers_paradox:ender_arrow> : 10,
    <item:archers_paradox:phantasmal_arrow> : 10,
    <item:archers_paradox:prismarine_arrow> : 5,
    <item:archers_paradox:quartz_arrow> : 25,
    <item:archers_paradox:shulker_arrow> : 200,
    <item:archers_paradox:explosive_arrow> : 25,
    <item:archers_paradox:frost_arrow> : 5,
    <item:archers_paradox:lightning_arrow> : 75,
    <item:archers_paradox:slime_arrow> : 10,
    <item:archers_paradox:spore_arrow> : 10,
    <item:archers_paradox:training_arrow> : 10,
    <item:archers_paradox:verdant_arrow> : 10
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