import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:weather_control:dw_online> : 0,
    <item:weather_control:dw_active> : 0,
    <item:weather_control:rm_online> : 0,
    <item:weather_control:rm_active> : 0,
    <item:weather_control:p_book> : 0,
    <item:weather_control:dwp> : 1139500,
    <item:weather_control:dw_offline> : 643750,
    <item:weather_control:dw_sensor> : 4129025,
    <item:weather_control:mini_housing> : 490100,
    <item:weather_control:rmp> : 778375,
    <item:weather_control:dw_core> : 113825,
    <item:weather_control:rm_core> : 119475,
    <item:weather_control:rm_offline> : 284425,
    <item:weather_control:rm_sensor> : 49950,
    <item:weather_control:dream_disk> : 500,
    <item:weather_control:dw_casing> : 18400,
    <item:weather_control:dw_vent> : 9450,
    <item:weather_control:rain_disk> : 500,
    <item:weather_control:rm_casing> : 18900,
    <item:weather_control:rm_vent> : 10250
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