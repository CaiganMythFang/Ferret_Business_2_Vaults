import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:sophisticatedbackpacks:magnet_upgrade> : 0,
    <item:sophisticatedbackpacks:advanced_magnet_upgrade> : 0,
    <item:sophisticatedbackpacks:opener_upgrade> : 14125,
    <item:sophisticatedbackpacks:inception_upgrade> : 7638725,
    <item:sophisticatedbackpacks:advanced_compacting_upgrade> : 458925,
    <item:sophisticatedbackpacks:battery_upgrade> : 372700,
    <item:sophisticatedbackpacks:diffuser_upgrade_advanced> : 1213875,
    <item:sophisticatedbackpacks:netherite_backpack> : 520150,
    <item:sophisticatedbackpacks:recycler_upgrade_advanced> : 289000,
    <item:sophisticatedbackpacks:activator_upgrade> : 125600,
    <item:sophisticatedbackpacks:advanced_tool_swapper_upgrade> : 262025,
    <item:sophisticatedbackpacks:compacting_upgrade> : 181625,
    <item:sophisticatedbackpacks:diamond_backpack> : 324625,
    <item:sophisticatedbackpacks:diffuser_upgrade> : 538300,
    <item:sophisticatedbackpacks:everlasting_upgrade> : 195000,
    <item:sophisticatedbackpacks:recycler_upgrade> : 172875,
    <item:sophisticatedbackpacks:stack_upgrade_tier_4> : 146325,
    <item:sophisticatedbackpacks:advanced_deposit_upgrade> : 34150,
    <item:sophisticatedbackpacks:advanced_feeding_upgrade> : 34500,
    <item:sophisticatedbackpacks:advanced_refill_upgrade> : 40850,
    <item:sophisticatedbackpacks:advanced_restock_upgrade> : 34150,
    <item:sophisticatedbackpacks:advanced_void_upgrade> : 30725,
    <item:sophisticatedbackpacks:auto_blasting_upgrade> : 75825,
    <item:sophisticatedbackpacks:auto_smelting_upgrade> : 74700,
    <item:sophisticatedbackpacks:auto_smoking_upgrade> : 74700,
    <item:sophisticatedbackpacks:stack_upgrade_tier_3> : 26350,
    <item:sophisticatedbackpacks:tank_upgrade> : 40600,
    <item:sophisticatedbackpacks:tool_swapper_upgrade> : 80800,
    <item:sophisticatedbackpacks:xp_pump_upgrade> : 27100,
    <item:sophisticatedbackpacks:advanced_filter_upgrade> : 17600,
    <item:sophisticatedbackpacks:advanced_pickup_upgrade> : 18975,
    <item:sophisticatedbackpacks:advanced_pump_upgrade> : 29825,
    <item:sophisticatedbackpacks:anvil_upgrade> : 19700,
    <item:sophisticatedbackpacks:chipped/botanist_workbench_upgrade> : 4050,
    <item:sophisticatedbackpacks:chipped/carpenter_workbench_upgrade> : 4200,
    <item:sophisticatedbackpacks:chipped/glassblower_workbench_upgrade> : 5375,
    <item:sophisticatedbackpacks:chipped/mason_workbench_upgrade> : 4425,
    <item:sophisticatedbackpacks:chipped/philosopher_workbench_upgrade> : 7725,
    <item:sophisticatedbackpacks:chipped/shepherd_workbench_upgrade> : 3975,
    <item:sophisticatedbackpacks:chipped/tinkerer_workbench_upgrade> : 4275,
    <item:sophisticatedbackpacks:deposit_upgrade> : 21000,
    <item:sophisticatedbackpacks:drop_upgrade> : 9425,
    <item:sophisticatedbackpacks:drop_upgrade_advanced> : 16000,
    <item:sophisticatedbackpacks:feeding_upgrade> : 21350,
    <item:sophisticatedbackpacks:filter_upgrade> : 4450,
    <item:sophisticatedbackpacks:gold_backpack> : 19725,
    <item:sophisticatedbackpacks:identification_upgrade> : 15450,
    <item:sophisticatedbackpacks:identification_upgrade_advanced> : 17025,
    <item:sophisticatedbackpacks:pickup_upgrade> : 5825,
    <item:sophisticatedbackpacks:pump_upgrade> : 8400,
    <item:sophisticatedbackpacks:refill_upgrade> : 14675,
    <item:sophisticatedbackpacks:restock_upgrade> : 21000,
    <item:sophisticatedbackpacks:stack_upgrade_tier_2> : 6600,
    <item:sophisticatedbackpacks:upgrade_base> : 3500,
    <item:sophisticatedbackpacks:void_upgrade> : 9525,
    <item:sophisticatedbackpacks:backpack> : 1900,
    <item:sophisticatedbackpacks:blasting_upgrade> : 6700,
    <item:sophisticatedbackpacks:crafting_upgrade> : 6825,
    <item:sophisticatedbackpacks:iron_backpack> : 6875,
    <item:sophisticatedbackpacks:jukebox_upgrade> : 5750,
    <item:sophisticatedbackpacks:smelting_upgrade> : 5575,
    <item:sophisticatedbackpacks:smoking_upgrade> : 5575,
    <item:sophisticatedbackpacks:stack_upgrade_tier_1> : 4100,
    <item:sophisticatedbackpacks:stonecutter_upgrade> : 4200
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