import crafttweaker.api.text.TextComponent;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:car:key> : 225,
    <item:car:black_tank_container> : 44900,
    <item:car:blue_tank_container> : 44900,
    <item:car:brown_tank_container> : 44900,
    <item:car:cyan_tank_container> : 44900,
    <item:car:gray_tank_container> : 44900,
    <item:car:green_tank_container> : 44900,
    <item:car:large_tank> : 42475,
    <item:car:light_blue_tank_container> : 44900,
    <item:car:light_gray_tank_container> : 44900,
    <item:car:lime_tank_container> : 44900,
    <item:car:magenta_tank_container> : 44900,
    <item:car:medium_tank> : 28575,
    <item:car:orange_tank_container> : 44900,
    <item:car:pink_tank_container> : 44900,
    <item:car:purple_tank_container> : 44900,
    <item:car:red_tank_container> : 44900,
    <item:car:white_tank_container> : 44900,
    <item:car:yellow_tank_container> : 44900,
    <item:car:acacia_body> : 2425,
    <item:car:acacia_bumper> : 2425,
    <item:car:backmix_reactor> : 10925,
    <item:car:battery> : 1850,
    <item:car:big_acacia_body> : 2425,
    <item:car:big_birch_body> : 2425,
    <item:car:big_crimson_body> : 2425,
    <item:car:big_dark_oak_body> : 2425,
    <item:car:big_jungle_body> : 2425,
    <item:car:big_oak_body> : 2425,
    <item:car:big_spruce_body> : 2425,
    <item:car:big_warped_body> : 2425,
    <item:car:birch_body> : 2425,
    <item:car:birch_bumper> : 2425,
    <item:car:black_sport_body> : 2425,
    <item:car:black_suv_body> : 2450,
    <item:car:black_transporter_body> : 2450,
    <item:car:blastfurnace> : 2200,
    <item:car:blue_sport_body> : 2425,
    <item:car:blue_suv_body> : 2450,
    <item:car:blue_transporter_body> : 2450,
    <item:car:brown_sport_body> : 2425,
    <item:car:brown_suv_body> : 2450,
    <item:car:brown_transporter_body> : 2450,
    <item:car:cable_insulator> : 1,
    <item:car:canister> : 10900,
    <item:car:car_workshop> : 1875,
    <item:car:car_workshop_outter> : 1925,
    <item:car:crimson_body> : 2425,
    <item:car:crimson_bumper> : 2425,
    <item:car:crimson_license_plate_holder> : 275,
    <item:car:cyan_sport_body> : 2425,
    <item:car:cyan_suv_body> : 2450,
    <item:car:cyan_transporter_body> : 2450,
    <item:car:dark_oak_body> : 2425,
    <item:car:dark_oak_bumper> : 2425,
    <item:car:diamond_license_plate_holder> : 9275,
    <item:car:dynamo> : 1925,
    <item:car:emerald_license_plate_holder> : 5025,
    <item:car:engine_3_cylinder> : 8725,
    <item:car:engine_6_cylinder> : 19350,
    <item:car:engine_truck> : 8925,
    <item:car:gas_station> : 12325,
    <item:car:generator> : 20225,
    <item:car:gold_license_plate_holder> : 3650,
    <item:car:gray_sport_body> : 2425,
    <item:car:gray_suv_body> : 2450,
    <item:car:gray_transporter_body> : 2450,
    <item:car:green_sport_body> : 2425,
    <item:car:green_suv_body> : 2450,
    <item:car:green_transporter_body> : 2450,
    <item:car:jungle_body> : 2425,
    <item:car:jungle_bumper> : 2425,
    <item:car:light_blue_sport_body> : 2425,
    <item:car:light_blue_suv_body> : 2450,
    <item:car:light_blue_transporter_body> : 2450,
    <item:car:light_gray_sport_body> : 2425,
    <item:car:light_gray_suv_body> : 2450,
    <item:car:light_gray_transporter_body> : 2450,
    <item:car:lime_sport_body> : 2425,
    <item:car:lime_suv_body> : 2450,
    <item:car:lime_transporter_body> : 2450,
    <item:car:magenta_sport_body> : 2425,
    <item:car:magenta_suv_body> : 2450,
    <item:car:magenta_transporter_body> : 2450,
    <item:car:oak_body> : 2425,
    <item:car:oak_bumper> : 2425,
    <item:car:oilmill> : 2425,
    <item:car:orange_sport_body> : 2425,
    <item:car:orange_suv_body> : 2450,
    <item:car:orange_transporter_body> : 2450,
    <item:car:pink_sport_body> : 2425,
    <item:car:pink_suv_body> : 2450,
    <item:car:pink_transporter_body> : 2450,
    <item:car:purple_sport_body> : 2425,
    <item:car:purple_suv_body> : 2450,
    <item:car:purple_transporter_body> : 2450,
    <item:car:red_sport_body> : 2425,
    <item:car:red_suv_body> : 2450,
    <item:car:red_transporter_body> : 2450,
    <item:car:repair_kit> : 2550,
    <item:car:small_tank> : 11175,
    <item:car:split_tank> : 18775,
    <item:car:spruce_body> : 2425,
    <item:car:spruce_bumper> : 2425,
    <item:car:tank> : 8975,
    <item:car:warped_body> : 2425,
    <item:car:warped_bumper> : 2425,
    <item:car:warped_license_plate_holder> : 275,
    <item:car:white_sport_body> : 2425,
    <item:car:white_suv_body> : 2450,
    <item:car:white_transporter_body> : 2450,
    <item:car:yellow_sport_body> : 2425,
    <item:car:yellow_suv_body> : 2450,
    <item:car:yellow_transporter_body> : 2450,
    <item:car:acacia_license_plate_holder> : 275,
    <item:car:asphalt> : 1,
    <item:car:asphalt_slab> : 1,
    <item:car:asphalt_slope> : 1,
    <item:car:asphalt_slope_flat_lower> : 1,
    <item:car:asphalt_slope_flat_upper> : 1,
    <item:car:big_wheel> : 350,
    <item:car:bio_diesel_bucket> : 800,
    <item:car:birch_license_plate_holder> : 275,
    <item:car:black_container> : 1100,
    <item:car:blue_container> : 1100,
    <item:car:brown_container> : 1100,
    <item:car:cable> : 100,
    <item:car:canola> : 5,
    <item:car:canola_cake> : 1,
    <item:car:canola_methanol_mix_bucket> : 725,
    <item:car:canola_oil_bucket> : 700,
    <item:car:canola_seeds> : 5,
    <item:car:car_pressure_plate> : 2,
    <item:car:crank> : 225,
    <item:car:cyan_container> : 1100,
    <item:car:dark_oak_license_plate_holder> : 275,
    <item:car:engine_piston> : 475,
    <item:car:fluid_extractor> : 250,
    <item:car:fluid_pipe> : 100,
    <item:car:glycerin_bucket> : 700,
    <item:car:gray_container> : 1100,
    <item:car:green_container> : 1100,
    <item:car:guard_rail> : 50,
    <item:car:hammer> : 350,
    <item:car:iron_license_plate_holder> : 1400,
    <item:car:iron_stick> : 100,
    <item:car:jungle_license_plate_holder> : 275,
    <item:car:license_plate> : 125,
    <item:car:light_blue_container> : 1100,
    <item:car:light_gray_container> : 1100,
    <item:car:lime_container> : 1100,
    <item:car:magenta_container> : 1100,
    <item:car:methanol_bucket> : 775,
    <item:car:oak_license_plate_holder> : 275,
    <item:car:orange_container> : 1100,
    <item:car:painter> : 10,
    <item:car:painter_yellow> : 10,
    <item:car:pink_container> : 1100,
    <item:car:purple_container> : 1100,
    <item:car:red_container> : 1100,
    <item:car:screw_driver> : 250,
    <item:car:sign> : 125,
    <item:car:sign_post> : 50,
    <item:car:spruce_license_plate_holder> : 275,
    <item:car:wheel> : 325,
    <item:car:white_container> : 1100,
    <item:car:wrench> : 300,
    <item:car:yellow_container> : 1100
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
        if (value > 999 && value < 10001) {
            <tag:items:tfb2:fop_miniscule>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Miniscule").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Small").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Medium").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Large").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
        
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Small").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Medium").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Large").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
    }
}