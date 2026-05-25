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
    <item:casinocraft:arcade_base_black> : 1500,
    <item:casinocraft:arcade_base_blue> : 1500,
    <item:casinocraft:arcade_base_brown> : 1500,
    <item:casinocraft:arcade_base_cyan> : 1500,
    <item:casinocraft:arcade_base_gray> : 1500,
    <item:casinocraft:arcade_base_green> : 1500,
    <item:casinocraft:arcade_base_light_blue> : 1500,
    <item:casinocraft:arcade_base_light_gray> : 1500,
    <item:casinocraft:arcade_base_lime> : 1500,
    <item:casinocraft:arcade_base_magenta> : 1500,
    <item:casinocraft:arcade_base_orange> : 1500,
    <item:casinocraft:arcade_base_pink> : 1500,
    <item:casinocraft:arcade_base_purple> : 1500,
    <item:casinocraft:arcade_base_red> : 1500,
    <item:casinocraft:arcade_base_white> : 1500,
    <item:casinocraft:arcade_base_yellow> : 1500,
    <item:casinocraft:arcade_slot_black> : 1350,
    <item:casinocraft:arcade_slot_blue> : 1350,
    <item:casinocraft:arcade_slot_brown> : 1350,
    <item:casinocraft:arcade_slot_cyan> : 1350,
    <item:casinocraft:arcade_slot_gray> : 1350,
    <item:casinocraft:arcade_slot_green> : 1350,
    <item:casinocraft:arcade_slot_light_blue> : 1350,
    <item:casinocraft:arcade_slot_light_gray> : 1350,
    <item:casinocraft:arcade_slot_lime> : 1350,
    <item:casinocraft:arcade_slot_magenta> : 1350,
    <item:casinocraft:arcade_slot_orange> : 1350,
    <item:casinocraft:arcade_slot_pink> : 1350,
    <item:casinocraft:arcade_slot_purple> : 1350,
    <item:casinocraft:arcade_slot_red> : 1350,
    <item:casinocraft:arcade_slot_white> : 1350,
    <item:casinocraft:arcade_slot_yellow> : 1350,
    <item:casinocraft:cardtable_base_black> : 25,
    <item:casinocraft:cardtable_base_blue> : 25,
    <item:casinocraft:cardtable_base_brown> : 25,
    <item:casinocraft:cardtable_base_cyan> : 25,
    <item:casinocraft:cardtable_base_gray> : 25,
    <item:casinocraft:cardtable_base_green> : 25,
    <item:casinocraft:cardtable_base_light_blue> : 25,
    <item:casinocraft:cardtable_base_light_gray> : 25,
    <item:casinocraft:cardtable_base_lime> : 25,
    <item:casinocraft:cardtable_base_magenta> : 25,
    <item:casinocraft:cardtable_base_orange> : 25,
    <item:casinocraft:cardtable_base_pink> : 25,
    <item:casinocraft:cardtable_base_purple> : 25,
    <item:casinocraft:cardtable_base_red> : 25,
    <item:casinocraft:cardtable_base_white> : 25,
    <item:casinocraft:cardtable_base_yellow> : 25,
    <item:casinocraft:cardtable_wide_black> : 75,
    <item:casinocraft:cardtable_wide_blue> : 75,
    <item:casinocraft:cardtable_wide_brown> : 75,
    <item:casinocraft:cardtable_wide_cyan> : 75,
    <item:casinocraft:cardtable_wide_gray> : 75,
    <item:casinocraft:cardtable_wide_green> : 75,
    <item:casinocraft:cardtable_wide_light_blue> : 75,
    <item:casinocraft:cardtable_wide_light_gray> : 75,
    <item:casinocraft:cardtable_wide_lime> : 75,
    <item:casinocraft:cardtable_wide_magenta> : 75,
    <item:casinocraft:cardtable_wide_orange> : 75,
    <item:casinocraft:cardtable_wide_pink> : 75,
    <item:casinocraft:cardtable_wide_purple> : 75,
    <item:casinocraft:cardtable_wide_red> : 75,
    <item:casinocraft:cardtable_wide_white> : 75,
    <item:casinocraft:cardtable_wide_yellow> : 75,
    <item:casinocraft:dice_basic_black> : 50,
    <item:casinocraft:dice_basic_blue> : 50,
    <item:casinocraft:dice_basic_brown> : 50,
    <item:casinocraft:dice_basic_cyan> : 50,
    <item:casinocraft:dice_basic_gray> : 50,
    <item:casinocraft:dice_basic_green> : 50,
    <item:casinocraft:dice_basic_light_blue> : 50,
    <item:casinocraft:dice_basic_light_gray> : 50,
    <item:casinocraft:dice_basic_lime> : 50,
    <item:casinocraft:dice_basic_magenta> : 50,
    <item:casinocraft:dice_basic_orange> : 50,
    <item:casinocraft:dice_basic_pink> : 50,
    <item:casinocraft:dice_basic_purple> : 50,
    <item:casinocraft:dice_basic_red> : 50,
    <item:casinocraft:dice_basic_white> : 50,
    <item:casinocraft:dice_basic_yellow> : 50,
    <item:casinocraft:module_card_black> : 10,
    <item:casinocraft:module_card_blue> : 10,
    <item:casinocraft:module_card_brown> : 10,
    <item:casinocraft:module_card_cyan> : 10,
    <item:casinocraft:module_card_gray> : 10,
    <item:casinocraft:module_card_green> : 10,
    <item:casinocraft:module_card_light_blue> : 10,
    <item:casinocraft:module_card_light_gray> : 10,
    <item:casinocraft:module_card_lime> : 10,
    <item:casinocraft:module_card_magenta> : 10,
    <item:casinocraft:module_card_orange> : 10,
    <item:casinocraft:module_card_pink> : 10,
    <item:casinocraft:module_card_purple> : 10,
    <item:casinocraft:module_card_red> : 10,
    <item:casinocraft:module_card_white> : 10,
    <item:casinocraft:module_card_yellow> : 10,
    <item:casinocraft:module_chip_black> : 25,
    <item:casinocraft:module_chip_blue> : 25,
    <item:casinocraft:module_chip_brown> : 25,
    <item:casinocraft:module_chip_cyan> : 25,
    <item:casinocraft:module_chip_gray> : 25,
    <item:casinocraft:module_chip_green> : 25,
    <item:casinocraft:module_chip_light_blue> : 25,
    <item:casinocraft:module_chip_light_gray> : 25,
    <item:casinocraft:module_chip_lime> : 25,
    <item:casinocraft:module_chip_magenta> : 25,
    <item:casinocraft:module_chip_orange> : 25,
    <item:casinocraft:module_chip_pink> : 25,
    <item:casinocraft:module_chip_purple> : 25,
    <item:casinocraft:module_chip_red> : 25,
    <item:casinocraft:module_chip_white> : 25,
    <item:casinocraft:module_chip_yellow> : 25,
    <item:casinocraft:module_mino_black> : 10,
    <item:casinocraft:module_mino_blue> : 10,
    <item:casinocraft:module_mino_brown> : 10,
    <item:casinocraft:module_mino_cyan> : 10,
    <item:casinocraft:module_mino_gray> : 10,
    <item:casinocraft:module_mino_green> : 10,
    <item:casinocraft:module_mino_light_blue> : 10,
    <item:casinocraft:module_mino_light_gray> : 10,
    <item:casinocraft:module_mino_lime> : 10,
    <item:casinocraft:module_mino_magenta> : 10,
    <item:casinocraft:module_mino_orange> : 10,
    <item:casinocraft:module_mino_pink> : 10,
    <item:casinocraft:module_mino_purple> : 10,
    <item:casinocraft:module_mino_red> : 10,
    <item:casinocraft:module_mino_white> : 10,
    <item:casinocraft:module_mino_yellow> : 10
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