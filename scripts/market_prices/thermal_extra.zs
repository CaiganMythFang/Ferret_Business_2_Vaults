import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:thermal_extra:potion_duration_augment_4> : 0,
    <item:thermal_extra:potion_amplifier_augment_4> : 0,
    <item:thermal_extra:potion_duration_augment_1> : 0,
    <item:thermal_extra:potion_amplifier_augment_1> : 0,
    <item:thermal_extra:potion_duration_augment_3> : 0,
    <item:thermal_extra:potion_amplifier_augment_3> : 0,
    <item:thermal_extra:potion_amplifier_augment_5> : 0,
    <item:thermal_extra:potion_duration_augment_5> : 0,
    <item:thermal_extra:potion_amplifier_augment_2> : 0,
    <item:thermal_extra:potion_duration_augment_2> : 0,
    <item:thermal_extra:twinite_bucket> : 0,
    <item:thermal_extra:soul_infused_bucket> : 0,
    <item:thermal_extra:shellite_bucket> : 0,
    <item:thermal_extra:dragonsteel_bucket> : 0,
    <item:thermal_extra:fluid_tank_augment_5> : 485575,
    <item:thermal_extra:fluid_tank_augment_6> : 488775,
    <item:thermal_extra:machine_speed_augment_4> : 564175,
    <item:thermal_extra:rf_coil_augment_5> : 486850,
    <item:thermal_extra:rf_coil_storage_augment_5> : 487200,
    <item:thermal_extra:rf_coil_xfer_augment_5> : 486525,
    <item:thermal_extra:machine_speed_augment_3> : 398250,
    <item:thermal_extra:machine_speed_augment_1> : 316600,
    <item:thermal_extra:machine_speed_augment_2> : 357300,
    <item:thermal_extra:area_radius_augment_4> : 199650,
    <item:thermal_extra:fluid_tank_augment_4> : 201575,
    <item:thermal_extra:rf_coil_augment_4> : 202850,
    <item:thermal_extra:rf_coil_storage_augment_4> : 203200,
    <item:thermal_extra:rf_coil_xfer_augment_4> : 202525,
    <item:thermal_extra:area_radius_augment_3> : 137325,
    <item:thermal_extra:dynamo_fuel_augment_4> : 149175,
    <item:thermal_extra:dynamo_output_augment_4> : 146800,
    <item:thermal_extra:fluid_tank_augment_3> : 144050,
    <item:thermal_extra:machine_efficiency_augment_4> : 151350,
    <item:thermal_extra:rf_coil_augment_3> : 145325,
    <item:thermal_extra:rf_coil_storage_augment_3> : 145675,
    <item:thermal_extra:rf_coil_xfer_augment_3> : 145000,
    <item:thermal_extra:area_radius_augment_2> : 104975,
    <item:thermal_extra:dynamo_fuel_augment_3> : 109350,
    <item:thermal_extra:dynamo_output_augment_3> : 106975,
    <item:thermal_extra:fluid_tank_augment_2> : 103100,
    <item:thermal_extra:machine_catalyst_augment_3> : 107475,
    <item:thermal_extra:machine_efficiency_augment_3> : 111525,
    <item:thermal_extra:machine_output_augment_3> : 107975,
    <item:thermal_extra:rf_coil_augment_2> : 104375,
    <item:thermal_extra:rf_coil_storage_augment_2> : 104725,
    <item:thermal_extra:rf_coil_xfer_augment_2> : 104050,
    <item:thermal_extra:upgrade_augment> : 198325,
    <item:thermal_extra:area_radius_augment_1> : 67475,
    <item:thermal_extra:av_item_filter_augment> : 36500,
    <item:thermal_extra:dragonsteel_block> : 87800,
    <item:thermal_extra:dragonsteel_coin> : 3252,
    <item:thermal_extra:dragonsteel_dust> : 9750,
    <item:thermal_extra:dragonsteel_gear> : 39350,
    <item:thermal_extra:dragonsteel_glass> : 4950,
    <item:thermal_extra:dragonsteel_ingot> : 9750,
    <item:thermal_extra:dragonsteel_nugget> : 1075,
    <item:thermal_extra:dragonsteel_plate> : 9750,
    <item:thermal_extra:dynamo_fuel_augment_1> : 35800,
    <item:thermal_extra:dynamo_fuel_augment_2> : 72100,
    <item:thermal_extra:dynamo_output_augment_1> : 33425,
    <item:thermal_extra:dynamo_output_augment_2> : 69725,
    <item:thermal_extra:fluid_tank_augment_1> : 65600,
    <item:thermal_extra:machine_catalyst_augment_1> : 33925,
    <item:thermal_extra:machine_catalyst_augment_2> : 70225,
    <item:thermal_extra:machine_efficiency_augment_1> : 37975,
    <item:thermal_extra:machine_efficiency_augment_2> : 74275,
    <item:thermal_extra:machine_output_augment_1> : 34425,
    <item:thermal_extra:machine_output_augment_2> : 70725,
    <item:thermal_extra:rf_coil_augment_1> : 66875,
    <item:thermal_extra:rf_coil_storage_augment_1> : 67225,
    <item:thermal_extra:rf_coil_xfer_augment_1> : 66550,
    <item:thermal_extra:crystallized_sunflower_oil_bucket> : 750,
    <item:thermal_extra:refined_sunflower_oil_bucket> : 750,
    <item:thermal_extra:shellite_block> : 16850,
    <item:thermal_extra:shellite_coin> : 625,
    <item:thermal_extra:shellite_dust> : 1875,
    <item:thermal_extra:shellite_gear> : 7825,
    <item:thermal_extra:shellite_glass> : 1025,
    <item:thermal_extra:shellite_ingot> : 1875,
    <item:thermal_extra:shellite_nugget> : 200,
    <item:thermal_extra:shellite_plate> : 1875,
    <item:thermal_extra:soul_infused_block> : 14750,
    <item:thermal_extra:soul_infused_coin> : 550,
    <item:thermal_extra:soul_infused_dust> : 1625,
    <item:thermal_extra:soul_infused_gear> : 6875,
    <item:thermal_extra:soul_infused_glass> : 900,
    <item:thermal_extra:soul_infused_ingot> : 1625,
    <item:thermal_extra:soul_infused_nugget> : 175,
    <item:thermal_extra:soul_infused_plate> : 1625,
    <item:thermal_extra:soul_sand_dust> : 1,
    <item:thermal_extra:twinite_block> : 21375,
    <item:thermal_extra:twinite_coin> : 800,
    <item:thermal_extra:twinite_dust> : 2375,
    <item:thermal_extra:twinite_gear> : 9825,
    <item:thermal_extra:twinite_glass> : 1275,
    <item:thermal_extra:twinite_ingot> : 2375,
    <item:thermal_extra:twinite_nugget> : 275,
    <item:thermal_extra:twinite_plate> : 2375,
    <item:thermal_extra:amethyst_dust> : 25,
    <item:thermal_extra:sticky_ball> : 5,
    <item:thermal_extra:sunflower_oil_bucket> : 725
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