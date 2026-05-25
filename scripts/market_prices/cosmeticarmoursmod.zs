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
    <item:cosmeticarmoursmod:amethyst_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:amethyst_plated_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:astronaut_boots> : 1000,
    <item:cosmeticarmoursmod:astronaut_chestplate> : 1000,
    <item:cosmeticarmoursmod:astronaut_helmet> : 1000,
    <item:cosmeticarmoursmod:astronaut_leggings> : 1000,
    <item:cosmeticarmoursmod:black_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:black_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:black_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:black_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:black_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:blue_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:blue_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:blue_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:blue_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:blue_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:brown_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:brown_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:brown_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:brown_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:brown_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:centurion_uniform_boots> : 1000,
    <item:cosmeticarmoursmod:centurion_uniform_chestplate> : 1000,
    <item:cosmeticarmoursmod:centurion_uniform_leggings> : 1000,
    <item:cosmeticarmoursmod:centurions_helmet_helmet> : 1000,
    <item:cosmeticarmoursmod:crown_helmet> : 1000,
    <item:cosmeticarmoursmod:cyan_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:cyan_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:cyan_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:cyan_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:cyan_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:diamond_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:emerald_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:farmer_attire_boots> : 1000,
    <item:cosmeticarmoursmod:farmer_attire_chestplate> : 1000,
    <item:cosmeticarmoursmod:farmer_attire_leggings> : 1000,
    <item:cosmeticarmoursmod:fishermans_attire_boots> : 1000,
    <item:cosmeticarmoursmod:fishermans_attire_chestplate> : 1000,
    <item:cosmeticarmoursmod:fishermans_attire_leggings> : 1000,
    <item:cosmeticarmoursmod:fishermans_bucket_hat_helmet> : 1000,
    <item:cosmeticarmoursmod:flower_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:ghillie_suit_boots> : 1000,
    <item:cosmeticarmoursmod:ghillie_suit_chestplate> : 1000,
    <item:cosmeticarmoursmod:ghillie_suit_helmet> : 1000,
    <item:cosmeticarmoursmod:ghillie_suit_leggings> : 1000,
    <item:cosmeticarmoursmod:gilded_netherite_boots> : 1000,
    <item:cosmeticarmoursmod:gilded_netherite_chestplate> : 1000,
    <item:cosmeticarmoursmod:gilded_netherite_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:gilded_netherite_helmet> : 1000,
    <item:cosmeticarmoursmod:gilded_netherite_leggings> : 1000,
    <item:cosmeticarmoursmod:green_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:green_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:green_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:green_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:green_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:grey_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:grey_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:grey_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:grey_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:grey_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:hidden_item> : 1000,
    <item:cosmeticarmoursmod:light_blue_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:light_blue_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:light_blue_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:light_blue_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:light_blue_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:light_grey_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:light_grey_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:light_grey_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:light_grey_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:light_grey_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:lime_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:lime_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:lime_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:lime_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:lime_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:magenta_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:magenta_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:magenta_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:magenta_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:magenta_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:mobster_boots> : 1000,
    <item:cosmeticarmoursmod:mobster_chestplate> : 1000,
    <item:cosmeticarmoursmod:mobster_helmet> : 1000,
    <item:cosmeticarmoursmod:mobster_leggings> : 1000,
    <item:cosmeticarmoursmod:netherite_plated_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:orange_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:orange_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:orange_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:orange_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:orange_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:pink_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:pink_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:pink_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:pink_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:pink_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:prismarine_plated_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:purple_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:purple_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:purple_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:purple_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:purple_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:quartz_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:red_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:red_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:red_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:red_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:red_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:redstone_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:royal_boots> : 1000,
    <item:cosmeticarmoursmod:royal_leggings> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_black_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_blue_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_brown_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_cyan_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_green_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_grey_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_light_blue_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_light_grey_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_lime_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_magenta_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_orange_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_pink_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_purple_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_red_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_white_chestplate> : 1000,
    <item:cosmeticarmoursmod:royal_tunic_yellow_chestplate> : 1000,
    <item:cosmeticarmoursmod:steampunkers_attire_boots> : 1000,
    <item:cosmeticarmoursmod:steampunkers_attire_chestplate> : 1000,
    <item:cosmeticarmoursmod:steampunkers_attire_f_boots> : 1000,
    <item:cosmeticarmoursmod:steampunkers_attire_f_chestplate> : 1000,
    <item:cosmeticarmoursmod:steampunkers_attire_f_leggings> : 1000,
    <item:cosmeticarmoursmod:steampunkers_attire_leggings> : 1000,
    <item:cosmeticarmoursmod:steampunkers_goggles_helmet> : 1000,
    <item:cosmeticarmoursmod:steampunkers_tophat_f_helmet> : 1000,
    <item:cosmeticarmoursmod:steampunkers_tophat_helmet> : 1000,
    <item:cosmeticarmoursmod:straw_hat_helmet> : 1000,
    <item:cosmeticarmoursmod:true_diamond_crown_helmet> : 1000,
    <item:cosmeticarmoursmod:white_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:white_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:white_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:white_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:white_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:witches_hat_helmet> : 1000,
    <item:cosmeticarmoursmod:yellow_plaid_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:yellow_plaid_skirt_leggings> : 1000,
    <item:cosmeticarmoursmod:yellow_skirt_boots> : 1000,
    <item:cosmeticarmoursmod:yellow_skirt_chestplate> : 1000,
    <item:cosmeticarmoursmod:yellow_skirt_leggings> : 1000
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