import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:crafting_on_a_stick:anvil> : 6975,
    <item:crafting_on_a_stick:cartography_table> : 5,
    <item:crafting_on_a_stick:chipped_anvil> : 6975,
    <item:crafting_on_a_stick:crafting_table> : 2,
    <item:crafting_on_a_stick:damaged_anvil> : 6975,
    <item:crafting_on_a_stick:grindstone> : 2,
    <item:crafting_on_a_stick:loom> : 5,
    <item:crafting_on_a_stick:smithing_table> : 250,
    <item:crafting_on_a_stick:stonecutter> : 125
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