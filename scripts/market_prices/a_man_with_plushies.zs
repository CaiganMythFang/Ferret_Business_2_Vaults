import crafttweaker.api.text.TextComponent;
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
    <item:a_man_with_plushies:allay_plush> : 50,
    <item:a_man_with_plushies:audino_plush> : 250,
    <item:a_man_with_plushies:baldi_plush> : 125,
    <item:a_man_with_plushies:blissey_plush> : 125,
    <item:a_man_with_plushies:candy_plush> : 250,
    <item:a_man_with_plushies:cc_green_knight_plush> : 125,
    <item:a_man_with_plushies:chicken_plush> : 125,
    <item:a_man_with_plushies:companion_block_plushie> : 250,
    <item:a_man_with_plushies:cow_plush> : 125,
    <item:a_man_with_plushies:crabster_plush> : 250,
    <item:a_man_with_plushies:creeper_plush> : 50,
    <item:a_man_with_plushies:crewmate_plush> : 50,
    <item:a_man_with_plushies:cuphead_plush> : 125,
    <item:a_man_with_plushies:enderman_plush> : 50,
    <item:a_man_with_plushies:fall_guy_plush> : 125,
    <item:a_man_with_plushies:female_indeedee_plush> : 125,
    <item:a_man_with_plushies:freddy_fazbear_plush> : 250,
    <item:a_man_with_plushies:gd_cube_plush> : 50,
    <item:a_man_with_plushies:ghast_plush> : 250,
    <item:a_man_with_plushies:glados_plush> : 250,
    <item:a_man_with_plushies:golden_plush_box> : 50,
    <item:a_man_with_plushies:goose_plush> : 125,
    <item:a_man_with_plushies:happycane_plush> : 125,
    <item:a_man_with_plushies:headcrab_plush> : 250,
    <item:a_man_with_plushies:heavy_plush> : 250,
    <item:a_man_with_plushies:henry_stickmin_plush> : 50,
    <item:a_man_with_plushies:insomni_plush> : 125,
    <item:a_man_with_plushies:isaac_plush> : 50,
    <item:a_man_with_plushies:lariat_plushie> : 125,
    <item:a_man_with_plushies:madeline_plush> : 125,
    <item:a_man_with_plushies:meat_boy_plush> : 50,
    <item:a_man_with_plushies:ninji_plush> : 50,
    <item:a_man_with_plushies:off_plush> : 50,
    <item:a_man_with_plushies:peashooter_plush> : 125,
    <item:a_man_with_plushies:peppino_plush> : 125,
    <item:a_man_with_plushies:pig_plush> : 125,
    <item:a_man_with_plushies:plush_box> : 50,
    <item:a_man_with_plushies:popgoes_plush> : 250,
    <item:a_man_with_plushies:pufferfish_plush> : 50,
    <item:a_man_with_plushies:red_pikmin_plush> : 50,
    <item:a_man_with_plushies:rhyth_plush> : 125,
    <item:a_man_with_plushies:sans_plush> : 125,
    <item:a_man_with_plushies:sensei_seaweed_plush> : 125,
    <item:a_man_with_plushies:shulker_plush> : 50,
    <item:a_man_with_plushies:spamton_plush> : 250,
    <item:a_man_with_plushies:squid_plush> : 50,
    <item:a_man_with_plushies:steppa_plush> : 125,
    <item:a_man_with_plushies:sudowoodo_plush> : 250,
    <item:a_man_with_plushies:the_knight_plush> : 125,
    <item:a_man_with_plushies:v_1_plush> : 250,
    <item:a_man_with_plushies:white_sheep_plush> : 125,
    <item:a_man_with_plushies:wiglin_plush> : 125,
    <item:a_man_with_plushies:wilson_plush> : 125,
    <item:a_man_with_plushies:wobblewok_plush> : 250
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