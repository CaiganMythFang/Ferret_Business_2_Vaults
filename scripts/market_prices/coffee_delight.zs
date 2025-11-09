import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// This variable controls whether we are in the pack dev mode or release mode. In Pack Dev mode, all EMC/FMC values are enabled to help calculate EMC/FMC for other mods.
var release_mode = false;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:coffee_delight:cap_arabic_coffee> : 625,
    <item:coffee_delight:cap_black_coffee> : 625,
    <item:coffee_delight:cap_cappuccino> : 625,
    <item:coffee_delight:cap_coco> : 625,
    <item:coffee_delight:cap_double_espresso_coffee> : 625,
    <item:coffee_delight:cap_fail_coffee> : 625,
    <item:coffee_delight:cap_iced_cappuccino> : 625,
    <item:coffee_delight:cap_iced_coco> : 625,
    <item:coffee_delight:cap_iced_lattee_coffee> : 625,
    <item:coffee_delight:cap_iced_macchiato> : 625,
    <item:coffee_delight:cap_iced_moka> : 625,
    <item:coffee_delight:cap_iced_usa_coffee> : 625,
    <item:coffee_delight:cap_latte_coffee> : 625,
    <item:coffee_delight:cap_macchiato> : 625,
    <item:coffee_delight:cap_milk_coffee> : 625,
    <item:coffee_delight:cap_moka_coffee> : 625,
    <item:coffee_delight:cap_turkey_coffee> : 625,
    <item:coffee_delight:cap_usa_coffee> : 625,
    <item:coffee_delight:coffee_cap> : 625,
    <item:coffee_delight:cuccumela_bottom> : 1725,
    <item:coffee_delight:cuccumela_pot> : 4425,
    <item:coffee_delight:moka_bottom> : 2800,
    <item:coffee_delight:moka_pot> : 6050,
    <item:coffee_delight:moka_top> : 1675,
    <item:coffee_delight:berries_wafer> : 10,
    <item:coffee_delight:coffee_beans> : 5,
    <item:coffee_delight:coffee_beans_cooked> : 5,
    <item:coffee_delight:coffee_berries> : 5,
    <item:coffee_delight:coffee_block_item> : 50,
    <item:coffee_delight:coffee_flour> : 5,
    <item:coffee_delight:coffee_mag> : 200,
    <item:coffee_delight:coffee_pie> : 25,
    <item:coffee_delight:coffee_pie_side> : 5,
    <item:coffee_delight:coffee_wafer> : 10,
    <item:coffee_delight:cuccumela_top> : 925,
    <item:coffee_delight:mag_arabic_coffee> : 200,
    <item:coffee_delight:mag_black_coffee> : 200,
    <item:coffee_delight:mag_cappuccino> : 200,
    <item:coffee_delight:mag_coco> : 200,
    <item:coffee_delight:mag_double_espresso_coffee> : 200,
    <item:coffee_delight:mag_fail_coffee> : 200,
    <item:coffee_delight:mag_iced_cappuccino> : 200,
    <item:coffee_delight:mag_iced_coco> : 200,
    <item:coffee_delight:mag_iced_lattee_coffee> : 200,
    <item:coffee_delight:mag_iced_macchiato> : 200,
    <item:coffee_delight:mag_iced_moka> : 200,
    <item:coffee_delight:mag_iced_usa_coffee> : 200,
    <item:coffee_delight:mag_latte_coffee> : 200,
    <item:coffee_delight:mag_macchiato> : 200,
    <item:coffee_delight:mag_milk_coffee> : 200,
    <item:coffee_delight:mag_moka_coffee> : 200,
    <item:coffee_delight:mag_turkey_coffee> : 200,
    <item:coffee_delight:mag_usa_coffee> : 200,
    <item:coffee_delight:mr_clever> : 5,
    <item:coffee_delight:quiche_side> : 25,
    <item:coffee_delight:turkey_handel> : 225,
    <item:coffee_delight:turkey_pot> : 900,
    <item:coffee_delight:turkey_pot_part> : 700,
    <item:coffee_delight:wafer> : 2
};

// For each item in the map, check if we're in release mode. If we are, anything below 26 EMC/FMC becomes unburnable for EMC
for item, value in priceTable {
    if (release_mode == true){
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