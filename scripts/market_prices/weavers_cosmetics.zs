import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:weavers_cosmetics:coopie_kart_hat_yellow_helmet> : 250,
    <item:weavers_cosmetics:titans_shroud_helmet> : 250,
    <item:weavers_cosmetics:gilded_knights_armour_helmet> : 250,
    <item:weavers_cosmetics:coopie_kart_hat_green_helmet> : 250,
    <item:weavers_cosmetics:grim_armour_helmet> : 250,
    <item:weavers_cosmetics:guards_armour_helmet> : 250,
    <item:weavers_cosmetics:knights_armour_helmet> : 250,
    <item:weavers_cosmetics:coopie_kart_hat_purple_helmet> : 250,
    <item:weavers_cosmetics:travellers_blue_armour_helmet> : 250,
    <item:weavers_cosmetics:travellers_brown_armour_helmet> : 250,
    <item:weavers_cosmetics:coopie_kart_hat_red_helmet> : 250,
    <item:weavers_cosmetics:spider_armour_helmet> : 250,
    <item:weavers_cosmetics:thieves_hood_helmet> : 250,
    <item:weavers_cosmetics:wolf_armour_helmet> : 250,
    <item:weavers_cosmetics:fox_armour_helmet> : 250,
    <item:weavers_cosmetics:travellers_white_armour_helmet> : 250,
    <item:weavers_cosmetics:travellers_red_armour_helmet> : 250,
    <item:weavers_cosmetics:travellers_purple_armour_helmet> : 250,
    <item:weavers_cosmetics:travellers_green_armour_helmet> : 250

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
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Miniscule");
            });
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
}