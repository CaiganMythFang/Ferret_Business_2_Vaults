import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:rftoolsbase:crafting_card> : 0,
    <item:rftoolsbase:dimensionalshard_end> : 0,
    <item:rftoolsbase:smartwrench_select> : 0,
    <item:rftoolsbase:tablet_filled> : 0,
    <item:rftoolsbase:tablet> : 39300,
    <item:rftoolsbase:dimensionalshard> : 300,
    <item:rftoolsbase:dimensionalshard_overworld> : 1500,
    <item:rftoolsbase:dimensionalshard_nether> : 1500,
    <item:rftoolsbase:filter_module> : 1375,
    <item:rftoolsbase:information_screen> : 250,
    <item:rftoolsbase:infused_diamond> : 1725,
    <item:rftoolsbase:infused_enderpearl> : 1400,
    <item:rftoolsbase:machine_base> : 225,
    <item:rftoolsbase:machine_frame> : 3125,
    <item:rftoolsbase:machine_infuser> : 6725,
    <item:rftoolsbase:manual> : 75,
    <item:rftoolsbase:smartwrench> : 225
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