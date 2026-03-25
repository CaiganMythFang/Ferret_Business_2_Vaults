import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:botanypots:black_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:black_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:black_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:blue_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:blue_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:blue_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:brown_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:brown_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:brown_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:cyan_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:cyan_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:cyan_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:gray_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:gray_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:gray_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:green_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:green_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:green_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:light_blue_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:light_blue_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:light_blue_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:light_gray_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:light_gray_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:light_gray_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:lime_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:lime_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:lime_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:magenta_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:magenta_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:magenta_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:orange_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:orange_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:orange_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:pink_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:pink_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:pink_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:purple_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:purple_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:purple_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:red_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:red_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:red_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:white_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:white_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:white_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:yellow_concrete_hopper_botany_pot> : 38575,
    <item:botanypots:yellow_glazed_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:yellow_terracotta_hopper_botany_pot> : 38675,
    <item:botanypots:black_concrete_botany_pot> : 19350,
    <item:botanypots:black_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:black_terracotta_botany_pot> : 19450,
    <item:botanypots:blue_concrete_botany_pot> : 19350,
    <item:botanypots:blue_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:blue_terracotta_botany_pot> : 19450,
    <item:botanypots:brown_concrete_botany_pot> : 19350,
    <item:botanypots:brown_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:brown_terracotta_botany_pot> : 19450,
    <item:botanypots:cyan_concrete_botany_pot> : 19350,
    <item:botanypots:cyan_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:cyan_terracotta_botany_pot> : 19450,
    <item:botanypots:gray_concrete_botany_pot> : 19350,
    <item:botanypots:gray_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:gray_terracotta_botany_pot> : 19450,
    <item:botanypots:green_concrete_botany_pot> : 19350,
    <item:botanypots:green_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:green_terracotta_botany_pot> : 19450,
    <item:botanypots:light_blue_concrete_botany_pot> : 19350,
    <item:botanypots:light_blue_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:light_blue_terracotta_botany_pot> : 19450,
    <item:botanypots:light_gray_concrete_botany_pot> : 19350,
    <item:botanypots:light_gray_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:light_gray_terracotta_botany_pot> : 19450,
    <item:botanypots:lime_concrete_botany_pot> : 19350,
    <item:botanypots:lime_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:lime_terracotta_botany_pot> : 19450,
    <item:botanypots:magenta_concrete_botany_pot> : 19350,
    <item:botanypots:magenta_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:magenta_terracotta_botany_pot> : 19450,
    <item:botanypots:orange_concrete_botany_pot> : 19350,
    <item:botanypots:orange_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:orange_terracotta_botany_pot> : 19450,
    <item:botanypots:pink_concrete_botany_pot> : 19350,
    <item:botanypots:pink_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:pink_terracotta_botany_pot> : 19450,
    <item:botanypots:purple_concrete_botany_pot> : 19350,
    <item:botanypots:purple_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:purple_terracotta_botany_pot> : 19450,
    <item:botanypots:red_concrete_botany_pot> : 19350,
    <item:botanypots:red_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:red_terracotta_botany_pot> : 19450,
    <item:botanypots:terracotta_botany_pot> : 19450,
    <item:botanypots:white_concrete_botany_pot> : 19350,
    <item:botanypots:white_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:white_terracotta_botany_pot> : 19450,
    <item:botanypots:yellow_concrete_botany_pot> : 19350,
    <item:botanypots:yellow_glazed_terracotta_botany_pot> : 19550,
    <item:botanypots:yellow_terracotta_botany_pot> : 19450
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