import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:fairylights:candle_lantern> : 225,
    <item:fairylights:candle_lantern_light> : 225,
    <item:fairylights:fairy_light> : 175,
    <item:fairylights:flower_light> : 50,
    <item:fairylights:garland> : 225,
    <item:fairylights:ghost_light> : 175,
    <item:fairylights:hanging_lights> : 450,
    <item:fairylights:heart_light> : 175,
    <item:fairylights:icicle_lights> : 50,
    <item:fairylights:incandescent_light> : 175,
    <item:fairylights:jack_o_lantern> : 50,
    <item:fairylights:letter_bunting> : 500,
    <item:fairylights:meteor_light> : 150,
    <item:fairylights:moon_light> : 725,
    <item:fairylights:oil_lantern> : 175,
    <item:fairylights:oil_lantern_light> : 175,
    <item:fairylights:orb_lantern> : 50,
    <item:fairylights:paper_lantern> : 50,
    <item:fairylights:pennant_bunting> : 450,
    <item:fairylights:skull_light> : 175,
    <item:fairylights:snowflake_light> : 50,
    <item:fairylights:spearhead_pennant> : 10,
    <item:fairylights:spider_light> : 75,
    <item:fairylights:square_pennant> : 10,
    <item:fairylights:star_light> : 75,
    <item:fairylights:swallowtail_pennant> : 10,
    <item:fairylights:tinsel> : 450,
    <item:fairylights:triangle_pennant> : 10,
    <item:fairylights:witch_light> : 50
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