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
    <item:kacys_cosmetics:allium_helmet> : 1000,
    <item:kacys_cosmetics:angel_halo_helmet> : 1000,
    <item:kacys_cosmetics:aqua_bow_helmet> : 1000,
    <item:kacys_cosmetics:aqua_glow_token> : 1000,
    <item:kacys_cosmetics:azure_bluet_helmet> : 1000,
    <item:kacys_cosmetics:baby_raccoon_helmet> : 1000,
    <item:kacys_cosmetics:black_cat_ears_helmet> : 1000,
    <item:kacys_cosmetics:black_cat_helmet> : 1000,
    <item:kacys_cosmetics:black_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:black_glow_token> : 1000,
    <item:kacys_cosmetics:black_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:blank_crewmate> : 1000,
    <item:kacys_cosmetics:blobfish_helmet> : 1000,
    <item:kacys_cosmetics:blue_bow_helmet> : 1000,
    <item:kacys_cosmetics:blue_butterfly_helmet> : 1000,
    <item:kacys_cosmetics:blue_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:blue_flower_crown_helmet> : 1000,
    <item:kacys_cosmetics:blue_fox_hound_helmet> : 1000,
    <item:kacys_cosmetics:blue_glow_token> : 1000,
    <item:kacys_cosmetics:blue_headphones_helmet> : 1000,
    <item:kacys_cosmetics:blue_orchid_helmet> : 1000,
    <item:kacys_cosmetics:blue_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:blue_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:brown_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:brown_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:chaddy_helmet> : 1000,
    <item:kacys_cosmetics:cornflower_helmet> : 1000,
    <item:kacys_cosmetics:crabby_headphones_helmet> : 1000,
    <item:kacys_cosmetics:cyan_bow_helmet> : 1000,
    <item:kacys_cosmetics:cyan_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:cyan_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:dandelion_helmet> : 1000,
    <item:kacys_cosmetics:dark_aqua_glow_token> : 1000,
    <item:kacys_cosmetics:dark_blue_glow_token> : 1000,
    <item:kacys_cosmetics:dark_gray_glow_token> : 1000,
    <item:kacys_cosmetics:dark_green_glow_token> : 1000,
    <item:kacys_cosmetics:dark_purple_glow_token> : 1000,
    <item:kacys_cosmetics:dark_red_glow_token> : 1000,
    <item:kacys_cosmetics:deadly_headphones_helmet> : 1000,
    <item:kacys_cosmetics:deer_antlers_helmet> : 1000,
    <item:kacys_cosmetics:devil_horns_helmet> : 1000,
    <item:kacys_cosmetics:diamond_axe_helmet> : 1000,
    <item:kacys_cosmetics:flower_crown_peacock_helmet> : 1000,
    <item:kacys_cosmetics:fox_ears_helmet> : 1000,
    <item:kacys_cosmetics:friendly_headphones_helmet> : 1000,
    <item:kacys_cosmetics:ghostly_headphones_helmet> : 1000,
    <item:kacys_cosmetics:ginger_cat_ears_helmet> : 1000,
    <item:kacys_cosmetics:gold_bow_helmet> : 1000,
    <item:kacys_cosmetics:gold_flower_crown_helmet> : 1000,
    <item:kacys_cosmetics:gold_glow_token> : 1000,
    <item:kacys_cosmetics:gray_bow_helmet> : 1000,
    <item:kacys_cosmetics:gray_cat_ears_helmet> : 1000,
    <item:kacys_cosmetics:gray_cat_helmet> : 1000,
    <item:kacys_cosmetics:gray_glow_token> : 1000,
    <item:kacys_cosmetics:green_bow_helmet> : 1000,
    <item:kacys_cosmetics:green_butterfly_helmet> : 1000,
    <item:kacys_cosmetics:green_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:green_flower_crown_helmet> : 1000,
    <item:kacys_cosmetics:green_glow_token> : 1000,
    <item:kacys_cosmetics:green_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:iron_axe_helmet> : 1000,
    <item:kacys_cosmetics:ivory_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:krusty_headphones_helmet> : 1000,
    <item:kacys_cosmetics:light_gray_bow_helmet> : 1000,
    <item:kacys_cosmetics:light_purple_glow_token> : 1000,
    <item:kacys_cosmetics:light_red_bow_helmet> : 1000,
    <item:kacys_cosmetics:lily_of_the_valley_helmet> : 1000,
    <item:kacys_cosmetics:lime_bow_helmet> : 1000,
    <item:kacys_cosmetics:lime_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:lime_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:mario_headphones_helmet> : 1000,
    <item:kacys_cosmetics:mustache_helmet> : 1000,
    <item:kacys_cosmetics:netherite_axe_helmet> : 1000,
    <item:kacys_cosmetics:nintendo_headphones_helmet> : 1000,
    <item:kacys_cosmetics:orange_butterfly_helmet> : 1000,
    <item:kacys_cosmetics:orange_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:orange_fox_hound_helmet> : 1000,
    <item:kacys_cosmetics:orange_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:orange_tulip_helmet> : 1000,
    <item:kacys_cosmetics:oxeye_daisy_helmet> : 1000,
    <item:kacys_cosmetics:perry_helmet> : 1000,
    <item:kacys_cosmetics:pink_bow_helmet> : 1000,
    <item:kacys_cosmetics:pink_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:pink_flower_crown_helmet> : 1000,
    <item:kacys_cosmetics:pink_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:pink_tulip_helmet> : 1000,
    <item:kacys_cosmetics:pink_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:pokemon_headphones_helmet> : 1000,
    <item:kacys_cosmetics:poppy_helmet> : 1000,
    <item:kacys_cosmetics:purple_bow_helmet> : 1000,
    <item:kacys_cosmetics:purple_butterfly_helmet> : 1000,
    <item:kacys_cosmetics:purple_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:purple_flower_crown_helmet> : 1000,
    <item:kacys_cosmetics:purple_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:purple_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:raccoon_ears_helmet> : 1000,
    <item:kacys_cosmetics:red_bow_helmet> : 1000,
    <item:kacys_cosmetics:red_butterfly_helmet> : 1000,
    <item:kacys_cosmetics:red_cat_helmet> : 1000,
    <item:kacys_cosmetics:red_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:red_flower_crown_helmet> : 1000,
    <item:kacys_cosmetics:red_glow_token> : 1000,
    <item:kacys_cosmetics:red_heart_helmet> : 1000,
    <item:kacys_cosmetics:red_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:red_tulip_helmet> : 1000,
    <item:kacys_cosmetics:red_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:royal_blue_bow_helmet> : 1000,
    <item:kacys_cosmetics:sheepish_headphones_helmet> : 1000,
    <item:kacys_cosmetics:silver_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:spooky_headphones_helmet> : 1000,
    <item:kacys_cosmetics:starry_headphones_helmet> : 1000,
    <item:kacys_cosmetics:tropical_humming_bird_helmet> : 1000,
    <item:kacys_cosmetics:white_bow_helmet> : 1000,
    <item:kacys_cosmetics:white_cat_ears_helmet> : 1000,
    <item:kacys_cosmetics:white_cat_helmet> : 1000,
    <item:kacys_cosmetics:white_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:white_glow_token> : 1000,
    <item:kacys_cosmetics:white_prem_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:white_tulip_helmet> : 1000,
    <item:kacys_cosmetics:white_unicorn_horn_helmet> : 1000,
    <item:kacys_cosmetics:wither_rose_helmet> : 1000,
    <item:kacys_cosmetics:yellow_bow_helmet> : 1000,
    <item:kacys_cosmetics:yellow_butterfly_helmet> : 1000,
    <item:kacys_cosmetics:yellow_crewmate_helmet> : 1000,
    <item:kacys_cosmetics:yellow_glow_token> : 1000,
    <item:kacys_cosmetics:yellow_prem_crewmate_helmet> : 1000
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