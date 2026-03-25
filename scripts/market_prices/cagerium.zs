import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:cagerium:ender_dragon_spawn_egg> : 1000,
    <item:cagerium:wither_spawn_egg> : 1000,
    <item:cagerium:plate> : 217200,
    <item:cagerium:binding_gemstone> : 135100,
    <item:cagerium:cage> : 33750,
    <item:cagerium:iron_golem_spawn_egg> : 1000,
    <item:cagerium:binding_wood_plate> : 1475,
    <item:cagerium:burning_upgrade> : 5325,
    <item:cagerium:ominous_skull> : 18100,
    <item:cagerium:terrarium> : 5550,
    <item:cagerium:skeleton_key> : 1900
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