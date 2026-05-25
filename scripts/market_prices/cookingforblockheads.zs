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
    <item:cookingforblockheads:cooking_table> : 3875,
    <item:cookingforblockheads:crafting_book> : 3625,
    <item:cookingforblockheads:sink> : 19375,
    <item:cookingforblockheads:black_kitchen_floor> : 2,
    <item:cookingforblockheads:blue_kitchen_floor> : 2,
    <item:cookingforblockheads:brown_kitchen_floor> : 2,
    <item:cookingforblockheads:cabinet> : 250,
    <item:cookingforblockheads:corner> : 300,
    <item:cookingforblockheads:counter> : 250,
    <item:cookingforblockheads:cow_jar> : 10,
    <item:cookingforblockheads:cyan_kitchen_floor> : 2,
    <item:cookingforblockheads:fridge> : 452,
    <item:cookingforblockheads:fruit_basket> : 1,
    <item:cookingforblockheads:gray_kitchen_floor> : 2,
    <item:cookingforblockheads:green_kitchen_floor> : 2,
    <item:cookingforblockheads:hanging_corner> : 250,
    <item:cookingforblockheads:heating_unit> : 675,
    <item:cookingforblockheads:ice_unit> : 600,
    <item:cookingforblockheads:light_blue_kitchen_floor> : 2,
    <item:cookingforblockheads:light_gray_kitchen_floor> : 2,
    <item:cookingforblockheads:lime_kitchen_floor> : 2,
    <item:cookingforblockheads:magenta_kitchen_floor> : 2,
    <item:cookingforblockheads:milk_jar> : 10,
    <item:cookingforblockheads:no_filter_edition> : 10,
    <item:cookingforblockheads:orange_kitchen_floor> : 2,
    <item:cookingforblockheads:oven> : 1125,
    <item:cookingforblockheads:pink_kitchen_floor> : 2,
    <item:cookingforblockheads:preservation_chamber> : 625,
    <item:cookingforblockheads:purple_kitchen_floor> : 2,
    <item:cookingforblockheads:recipe_book> : 10,
    <item:cookingforblockheads:red_kitchen_floor> : 2,
    <item:cookingforblockheads:spice_rack> : 1,
    <item:cookingforblockheads:toaster> : 1500,
    <item:cookingforblockheads:tool_rack> : 50,
    <item:cookingforblockheads:white_kitchen_floor> : 2,
    <item:cookingforblockheads:yellow_kitchen_floor> : 2
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