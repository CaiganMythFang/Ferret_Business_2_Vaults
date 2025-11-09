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
    <item:delightful:brass_knife> : 100,
    <item:delightful:bronze_knife> : 75,
    <item:delightful:constantan_knife> : 200,
    <item:delightful:electrum_knife> : 450,
    <item:delightful:ender_nectar> : 825,
    <item:delightful:glow_jelly_bottle> : 25,
    <item:delightful:invar_knife> : 275,
    <item:delightful:lead_knife> : 100,
    <item:delightful:nickel_knife> : 350,
    <item:delightful:quartz_cabinet> : 1000,
    <item:delightful:silver_knife> : 350,
    <item:delightful:steel_knife> : 225,
    <item:delightful:acorn> : 5,
    <item:delightful:acorn_sack> : 50,
    <item:delightful:animal_fat> : 25,
    <item:delightful:animal_oil_bottle> : 50,
    <item:delightful:azalea_tea> : 10,
    <item:delightful:basalt_cabinet> : 10,
    <item:delightful:berry_matcha_latte> : 50,
    <item:delightful:cactus_flesh> : 1,
    <item:delightful:cactus_steak> : 1,
    <item:delightful:cheeseburger> : 25,
    <item:delightful:chopped_clover> : 5,
    <item:delightful:chunk_nugget> : 1,
    <item:delightful:cooked_goat> : 10,
    <item:delightful:cooked_marshmallow_stick> : 2,
    <item:delightful:cooked_venison_chops> : 10,
    <item:delightful:copper_knife> : 100,
    <item:delightful:crab_rangoon> : 25,
    <item:delightful:deluxe_cheeseburger> : 25,
    <item:delightful:field_salad> : 25,
    <item:delightful:green_tea_leaf> : 5,
    <item:delightful:honey_glazed_walnut> : 25,
    <item:delightful:jelly_bottle> : 25,
    <item:delightful:marshmallow_stick> : 2,
    <item:delightful:matcha> : 5,
    <item:delightful:matcha_latte> : 50,
    <item:delightful:mini_melon> : 5,
    <item:delightful:nut_butter_and_jelly_sandwich> : 25,
    <item:delightful:nut_butter_bottle> : 10,
    <item:delightful:prickly_pear_juice> : 25,
    <item:delightful:raw_goat> : 10,
    <item:delightful:rock_candy> : 250,
    <item:delightful:salmonberries> : 5,
    <item:delightful:salmonberry_pips> : 5,
    <item:delightful:salmonberry_sack> : 50,
    <item:delightful:smore> : 25,
    <item:delightful:tin_knife> : 100,
    <item:delightful:venison_chops> : 10
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