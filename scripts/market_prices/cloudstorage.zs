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
    <item:cloudstorage:spawn_egg_badloon> : 250,
    <item:cloudstorage:spawn_egg_bloviator> : 250,
    <item:cloudstorage:static_cloud_chest> : 200,
    <item:cloudstorage:angry_cloud_in_a_bottle> : 25,
    <item:cloudstorage:balloon> : 100,
    <item:cloudstorage:balloon_arrow> : 2,
    <item:cloudstorage:balloon_bit> : 25,
    <item:cloudstorage:balloon_stand> : 500,
    <item:cloudstorage:cloud> : 25,
    <item:cloudstorage:cloud_chest> : 25,
    <item:cloudstorage:cotton_candy> : 10,
    <item:cloudstorage:guide_book> : 50,
    <item:cloudstorage:happy_cloud_in_a_bottle> : 25,
    <item:cloudstorage:music_disc_drift> : 25,
    <item:cloudstorage:propeller_hat> : 25,
    <item:cloudstorage:static_cloud> : 25,
    <item:cloudstorage:balloon_buddy> : 125
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