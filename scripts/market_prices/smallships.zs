import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:smallships:acacia_brigg> : 1850,
    <item:smallships:birch_brigg> : 1850,
    <item:smallships:cannon> : 1350,
    <item:smallships:dark_oak_brigg> : 1850,
    <item:smallships:jungle_brigg> : 1850,
    <item:smallships:oak_brigg> : 1850,
    <item:smallships:spruce_brigg> : 1850,
    <item:smallships:acacia_cog> : 950,
    <item:smallships:acacia_drakkar> : 925,
    <item:smallships:acacia_galley> : 950,
    <item:smallships:birch_cog> : 950,
    <item:smallships:birch_drakkar> : 925,
    <item:smallships:birch_galley> : 950,
    <item:smallships:cannon_ball> : 25,
    <item:smallships:dark_oak_cog> : 950,
    <item:smallships:dark_oak_drakkar> : 925,
    <item:smallships:dark_oak_galley> : 950,
    <item:smallships:jungle_cog> : 950,
    <item:smallships:jungle_drakkar> : 925,
    <item:smallships:jungle_galley> : 950,
    <item:smallships:oak_cog> : 950,
    <item:smallships:oak_drakkar> : 925,
    <item:smallships:oak_galley> : 950,
    <item:smallships:sail> : 900,
    <item:smallships:spruce_cog> : 950,
    <item:smallships:spruce_drakkar> : 925,
    <item:smallships:spruce_galley> : 950
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