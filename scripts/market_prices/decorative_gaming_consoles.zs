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
    <item:decorative_gaming_consoles:black_coolbox_series_s> : 250,
    <item:decorative_gaming_consoles:cheaper_gray_n_dee_changer> : 250,
    <item:decorative_gaming_consoles:cheaper_turquoise_n_dee_changer> : 250,
    <item:decorative_gaming_consoles:cheaper_yellow_n_dee_changer> : 250,
    <item:decorative_gaming_consoles:coolbox_series_x> : 250,
    <item:decorative_gaming_consoles:n_dee_changer> : 250,
    <item:decorative_gaming_consoles:neon_n_dee_changer> : 250,
    <item:decorative_gaming_consoles:oled_n_dee_changer> : 250,
    <item:decorative_gaming_consoles:pay_station_5> : 250,
    <item:decorative_gaming_consoles:pay_station_5_digital_edition> : 250,
    <item:decorative_gaming_consoles:pay_station_5_spider_edition> : 250,
    <item:decorative_gaming_consoles:white_coolbox_series_s> : 250
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
            item.addTooltip(new TextComponent("Lost Deco").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>)));
            item.addTooltip(new TextComponent("Only Found in the Liminal Mall").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>)));
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
            item.addTooltip(new TextComponent("Lost Deco").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>)));
            item.addTooltip(new TextComponent("Only Found in the Liminal Mall").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>)));
    }
}