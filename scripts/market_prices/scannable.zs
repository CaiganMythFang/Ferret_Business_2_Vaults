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
    <item:scannable:block_module> : 5358325,
    <item:scannable:vault_cake_module> : 2721675,
    <item:scannable:vault_doors_module> : 3019425,
    <item:scannable:range_module> : 434425,
    <item:scannable:vault_coins_module> : 322325,
    <item:scannable:vault_dungeon_doors_module> : 350375,
    <item:scannable:vault_objectives_module> : 421325,
    <item:scannable:vault_pylon_module> : 347875,
    <item:scannable:vault_treasure_doors_module> : 352525,
    <item:scannable:vault_vendoors_module> : 352325,
    <item:scannable:scanner> : 817325,
    <item:scannable:vault_chests_module> : 875575,
    <item:scannable:vault_chests_module_gilded> : 102525,
    <item:scannable:vault_chests_module_living> : 109525,
    <item:scannable:vault_chests_module_ornate> : 126825,
    <item:scannable:vault_chests_module_raw> : 102925,
    <item:scannable:vault_chests_module_treasure> : 112925,
    <item:scannable:vault_ores_module> : 143125,
    <item:scannable:vault_spirit_module> : 103725,
    <item:scannable:blank_module> : 34325,
    <item:scannable:common_ores_module> : 36525,
    <item:scannable:entity_module> : 35650,
    <item:scannable:fluid_module> : 34025,
    <item:scannable:friendly_entity_module> : 36625,
    <item:scannable:hostile_entity_module> : 36625,
    <item:scannable:rare_ores_module> : 42825,
    <item:scannable:vault_chests_module_wooden> : 99325
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