import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:fluxnetworks:flux_controller> : 153525,
    <item:fluxnetworks:gargantuan_flux_storage> : 249050,
    <item:fluxnetworks:herculean_flux_storage> : 41500,
    <item:fluxnetworks:basic_flux_storage> : 6925,
    <item:fluxnetworks:flux_block> : 1150,
    <item:fluxnetworks:flux_core> : 225,
    <item:fluxnetworks:flux_plug> : 19475,
    <item:fluxnetworks:flux_point> : 19475,
    <item:fluxnetworks:flux_configurator> : 1000,
    <item:fluxnetworks:flux_dust> : 50
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