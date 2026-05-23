import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:quarryplus:remote_placer> : 0,
    <item:quarryplus:frame> : 0,
    <item:quarryplus:replacer_module> : 0,
    <item:quarryplus:replacer> : 0,
    <item:quarryplus:filler_module> : 0,
    <item:quarryplus:repeat_tick_module> : 0,
    <item:quarryplus:book_mover> : 0,
    <item:quarryplus:creative_generator> : 0,
    <item:quarryplus:dummy> : 0,
    <item:quarryplus:remove_bedrock_module> : 0,
    <item:quarryplus:dummy_replacer> : 0,
    <item:quarryplus:spawner_controller> : 0,
    <item:quarryplus:adv_quarry> : 2361325,
    <item:quarryplus:adv_pump> : 984725,
    <item:quarryplus:quarry> : 686950,
    <item:quarryplus:solid_fuel_quarry> : 370500,
    <item:quarryplus:fuel_module_normal> : 223450,
    <item:quarryplus:mini_quarry> : 201075,
    <item:quarryplus:mover> : 285475,
    <item:quarryplus:pump_module> : 260175,
    <item:quarryplus:pump_plus> : 260175,
    <item:quarryplus:mining_well> : 113825,
    <item:quarryplus:flex_marker> : 79825,
    <item:quarryplus:marker> : 78875,
    <item:quarryplus:marker16> : 78875,
    <item:quarryplus:waterlogged_flex_marker> : 79825,
    <item:quarryplus:waterlogged_marker> : 78875,
    <item:quarryplus:waterlogged_marker16> : 78875,
    <item:quarryplus:y_setter> : 31200,
    <item:quarryplus:exp_module> : 23050,
    <item:quarryplus:exp_pump> : 23050,
    <item:quarryplus:filler> : 11250,
    <item:quarryplus:placer_plus> : 1600,
    <item:quarryplus:status_checker> : 16700,
    <item:quarryplus:workbench> : 20625
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