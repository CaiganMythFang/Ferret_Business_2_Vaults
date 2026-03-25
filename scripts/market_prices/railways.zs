import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:railways:benchcart> : 1125,
    <item:railways:black_conductor_cap> : 1625,
    <item:railways:blue_conductor_cap> : 1625,
    <item:railways:brown_conductor_cap> : 1625,
    <item:railways:cyan_conductor_cap> : 1625,
    <item:railways:gray_conductor_cap> : 1625,
    <item:railways:green_conductor_cap> : 1625,
    <item:railways:jukeboxcart> : 2925,
    <item:railways:light_blue_conductor_cap> : 1625,
    <item:railways:light_gray_conductor_cap> : 1625,
    <item:railways:lime_conductor_cap> : 1625,
    <item:railways:magenta_conductor_cap> : 1625,
    <item:railways:orange_conductor_cap> : 1625,
    <item:railways:pink_conductor_cap> : 1625,
    <item:railways:purple_conductor_cap> : 1625,
    <item:railways:red_conductor_cap> : 1625,
    <item:railways:remote_lens> : 2550,
    <item:railways:semaphore> : 250,
    <item:railways:smokestack_caboosestyle> : 275,
    <item:railways:smokestack_coalburner> : 1350,
    <item:railways:smokestack_diesel> : 1375,
    <item:railways:smokestack_oilburner> : 900,
    <item:railways:smokestack_streamlined> : 450,
    <item:railways:smokestack_woodburner> : 725,
    <item:railways:track_blackstone> : 150,
    <item:railways:track_coupler> : 1525,
    <item:railways:track_crimson> : 150,
    <item:railways:track_ender> : 25,
    <item:railways:track_hexcasting_edified> : 25,
    <item:railways:track_phantom> : 25,
    <item:railways:track_switch_brass> : 2925,
    <item:railways:track_warped> : 150,
    <item:railways:white_conductor_cap> : 1625,
    <item:railways:yellow_conductor_cap> : 1625,
    <item:railways:conductor_vent> : 50,
    <item:railways:conductor_whistle> : 100,
    <item:railways:smokestack_long> : 50,
    <item:railways:track_acacia> : 25,
    <item:railways:track_birch> : 25,
    <item:railways:track_dark_oak> : 25,
    <item:railways:track_jungle> : 25,
    <item:railways:track_monorail> : 75,
    <item:railways:track_oak> : 25,
    <item:railways:track_spruce> : 25,
    <item:railways:track_switch_andesite> : 475,
    <item:railways:track_tieless> : 25

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