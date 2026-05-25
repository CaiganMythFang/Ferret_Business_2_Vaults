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
    <item:magic_vibe_decorations:wall_mushroomsmixoverworld> : 50,
    <item:magic_vibe_decorations:crystallised_nether_crystal> : 0,
    <item:magic_vibe_decorations:crystallised_overworld_secrets_crystal> : 0,
    <item:magic_vibe_decorations:ametrine_crystal_columns> : 0,
    <item:magic_vibe_decorations:diamond_crystal_columns> : 0,
    <item:magic_vibe_decorations:cluster_4> : 0,
    <item:magic_vibe_decorations:diamond_druze> : 0,
    <item:magic_vibe_decorations:ametrine_druze> : 0,
    <item:magic_vibe_decorations:cluster_1> : 0,
    <item:magic_vibe_decorations:cluster_2> : 0,
    <item:magic_vibe_decorations:citrine_druze> : 0,
    <item:magic_vibe_decorations:citrine_columns> : 0,
    <item:magic_vibe_decorations:b_2> : 0,
    <item:magic_vibe_decorations:b_3> : 0,
    <item:magic_vibe_decorations:cocoa_2> : 0,
    <item:magic_vibe_decorations:cocoa_1> : 0,
    <item:magic_vibe_decorations:basket_1> : 0,
    <item:magic_vibe_decorations:basket_2> : 0,
    <item:magic_vibe_decorations:basket_3> : 0,
    <item:magic_vibe_decorations:basket_4> : 0,
    <item:magic_vibe_decorations:cluster_5> : 0,
    <item:magic_vibe_decorations:b_1> : 0,
    <item:magic_vibe_decorations:cocoa_3> : 0,
    <item:magic_vibe_decorations:crystallised_ender_amethyst> : 0,
    <item:magic_vibe_decorations:aquamarine_druze> : 0,
    <item:magic_vibe_decorations:ender_amethyst_columns> : 0,
    <item:magic_vibe_decorations:aquamarine_crystal_columns> : 0,
    <item:magic_vibe_decorations:cluster_9> : 0,
    <item:magic_vibe_decorations:emerald_columns> : 0,
    <item:magic_vibe_decorations:emerald_druze> : 0,
    <item:magic_vibe_decorations:grow_nether> : 0,
    <item:magic_vibe_decorations:grow_9> : 0,
    <item:magic_vibe_decorations:grow_8> : 0,
    <item:magic_vibe_decorations:grow_10> : 0,
    <item:magic_vibe_decorations:grow_11> : 0,
    <item:magic_vibe_decorations:grow_12> : 0,
    <item:magic_vibe_decorations:grow_2> : 0,
    <item:magic_vibe_decorations:grow_3> : 0,
    <item:magic_vibe_decorations:grow_4> : 0,
    <item:magic_vibe_decorations:grow_5> : 0,
    <item:magic_vibe_decorations:grow_6> : 0,
    <item:magic_vibe_decorations:grow_7> : 0,
    <item:magic_vibe_decorations:overworld_crystal_columns> : 0,
    <item:magic_vibe_decorations:lapis_lazuli_druze> : 0,
    <item:magic_vibe_decorations:lapis_crystal_columns> : 0,
    <item:magic_vibe_decorations:cluster_3> : 0,
    <item:magic_vibe_decorations:nether_columns> : 0,
    <item:magic_vibe_decorations:nether_fire_druze> : 0,
    <item:magic_vibe_decorations:obsidian_druze> : 0,
    <item:magic_vibe_decorations:obsidian_columns> : 0,
    <item:magic_vibe_decorations:cluster_7> : 0,
    <item:magic_vibe_decorations:overworld_secrets_crystal_druze> : 0,
    <item:magic_vibe_decorations:pies_5> : 0,
    <item:magic_vibe_decorations:pies_4> : 0,
    <item:magic_vibe_decorations:pies_3> : 0,
    <item:magic_vibe_decorations:pies_2> : 0,
    <item:magic_vibe_decorations:pies_1> : 0,
    <item:magic_vibe_decorations:stage_9> : 0,
    <item:magic_vibe_decorations:stage_8> : 0,
    <item:magic_vibe_decorations:stage_7> : 0,
    <item:magic_vibe_decorations:cluster_8> : 0,
    <item:magic_vibe_decorations:stage_10> : 0,
    <item:magic_vibe_decorations:stage_11> : 0,
    <item:magic_vibe_decorations:stage_12> : 0,
    <item:magic_vibe_decorations:stage_2> : 0,
    <item:magic_vibe_decorations:grow_ender> : 0,
    <item:magic_vibe_decorations:grow_1> : 0,
    <item:magic_vibe_decorations:pumpkinmuff_1> : 0,
    <item:magic_vibe_decorations:pumpkinmuff_2> : 0,
    <item:magic_vibe_decorations:stage_3> : 0,
    <item:magic_vibe_decorations:stage_4> : 0,
    <item:magic_vibe_decorations:stage_5> : 0,
    <item:magic_vibe_decorations:stage_6> : 0,
    <item:magic_vibe_decorations:rubellite_crystal_columns> : 0,
    <item:magic_vibe_decorations:rubellite_druze> : 0,
    <item:magic_vibe_decorations:cluster_6> : 0,
    <item:magic_vibe_decorations:quartz_columns> : 0,
    <item:magic_vibe_decorations:quartz_druze> : 0,
    <item:magic_vibe_decorations:ender_amethyst_druze> : 0,
    <item:magic_vibe_decorations:lapis_lazuli_crystal> : 100,
    <item:magic_vibe_decorations:air_rune> : 75,
    <item:magic_vibe_decorations:ametrine_crystal> : 225,
    <item:magic_vibe_decorations:ametrine_crystal_block> : 300,
    <item:magic_vibe_decorations:ametrine_crystal_lamp> : 300,
    <item:magic_vibe_decorations:ametrine_fairy_lights> : 75,
    <item:magic_vibe_decorations:ametrine_shard> : 75,
    <item:magic_vibe_decorations:ametrine_star_ball> : 300,
    <item:magic_vibe_decorations:bkcrimson> : 50,
    <item:magic_vibe_decorations:bkwarped> : 50,
    <item:magic_vibe_decorations:cat_plushie_calico> : 1050,
    <item:magic_vibe_decorations:cat_plushie_red> : 1050,
    <item:magic_vibe_decorations:cat_plushie_tabby> : 100,
    <item:magic_vibe_decorations:cat_plushie_white> : 100,
    <item:magic_vibe_decorations:catplushie> : 1050,
    <item:magic_vibe_decorations:citrine_crystal> : 1175,
    <item:magic_vibe_decorations:citrine_crystal_block> : 1550,
    <item:magic_vibe_decorations:citrine_crystal_lamp> : 1575,
    <item:magic_vibe_decorations:citrine_fairy_lights> : 400,
    <item:magic_vibe_decorations:citrine_shard> : 400,
    <item:magic_vibe_decorations:citrine_star_ball> : 1550,
    <item:magic_vibe_decorations:clear_quartz_crystal> : 500,
    <item:magic_vibe_decorations:crystal_ball> : 1325,
    <item:magic_vibe_decorations:diamond_crystal> : 7200,
    <item:magic_vibe_decorations:diamond_crystal_block> : 9600,
    <item:magic_vibe_decorations:diamond_crystal_lamp> : 9600,
    <item:magic_vibe_decorations:diamond_crystal_shard> : 2400,
    <item:magic_vibe_decorations:diamond_crystal_star_ball> : 9600,
    <item:magic_vibe_decorations:emerald_crystal> : 3800,
    <item:magic_vibe_decorations:emerald_crystal_block> : 5075,
    <item:magic_vibe_decorations:emerald_crystal_lamp> : 5075,
    <item:magic_vibe_decorations:emerald_crystal_shard> : 1275,
    <item:magic_vibe_decorations:emerald_crystal_star_ball> : 5075,
    <item:magic_vibe_decorations:emerald_fairy_lights> : 1275,
    <item:magic_vibe_decorations:ender_amethyst_block> : 1225,
    <item:magic_vibe_decorations:ender_amethyst_crystal> : 925,
    <item:magic_vibe_decorations:ender_amethyst_crystal_lamp> : 1225,
    <item:magic_vibe_decorations:ender_amethyst_fairy_lights> : 300,
    <item:magic_vibe_decorations:ender_amethyst_shard> : 300,
    <item:magic_vibe_decorations:ender_amethyst_star_ball> : 675,
    <item:magic_vibe_decorations:fire_rune> : 175,
    <item:magic_vibe_decorations:galaxy_rune> : 325,
    <item:magic_vibe_decorations:ghost_wallpaint> : 175,
    <item:magic_vibe_decorations:jewellery_chest> : 1350,
    <item:magic_vibe_decorations:nature_rune> : 1275,
    <item:magic_vibe_decorations:nether_crystal_shard> : 175,
    <item:magic_vibe_decorations:nether_crystal_star_ball> : 1225,
    <item:magic_vibe_decorations:nether_fire_crystal> : 500,
    <item:magic_vibe_decorations:nether_fire_crystal_block> : 675,
    <item:magic_vibe_decorations:nether_fire_crystal_lamp> : 675,
    <item:magic_vibe_decorations:nether_fire_fairy_lights> : 175,
    <item:magic_vibe_decorations:overworld_crystal_block> : 1500,
    <item:magic_vibe_decorations:overworld_crystal_lamp> : 1500,
    <item:magic_vibe_decorations:overworld_crystal_shard> : 375,
    <item:magic_vibe_decorations:overworld_crystal_star_ball> : 1500,
    <item:magic_vibe_decorations:overworld_secret_crystal> : 1125,
    <item:magic_vibe_decorations:quartz_crystal_block> : 675,
    <item:magic_vibe_decorations:quartz_crystal_lamp> : 675,
    <item:magic_vibe_decorations:quartz_crystal_shard> : 175,
    <item:magic_vibe_decorations:quartz_crystal_star_ball> : 675,
    <item:magic_vibe_decorations:rubellite_star_ball> : 350,
    <item:magic_vibe_decorations:small_magic_pot> : 1575,
    <item:magic_vibe_decorations:small_magic_pot_awake> : 1675,
    <item:magic_vibe_decorations:spider_plushie_purple> : 425,
    <item:magic_vibe_decorations:wall_mushrooms_crimson_fungus> : 50,
    <item:magic_vibe_decorations:wall_mushrooms_mix_nether> : 50,
    <item:magic_vibe_decorations:wall_mushrooms_warped_fungus> : 50,
    <item:magic_vibe_decorations:witchy_altar> : 1075,
    <item:magic_vibe_decorations:aquamarine_crystal> : 10,
    <item:magic_vibe_decorations:aquamarine_crystal_block> : 10,
    <item:magic_vibe_decorations:aquamarine_crystal_lamp> : 10,
    <item:magic_vibe_decorations:aquamarine_shard> : 2,
    <item:magic_vibe_decorations:aquamarine_star_ball> : 10,
    <item:magic_vibe_decorations:bamboobookshelf> : 50,
    <item:magic_vibe_decorations:basket> : 100,
    <item:magic_vibe_decorations:bigbookstack> : 75,
    <item:magic_vibe_decorations:bkacacia> : 50,
    <item:magic_vibe_decorations:bkbirch> : 50,
    <item:magic_vibe_decorations:bkdarkoak> : 50,
    <item:magic_vibe_decorations:bkmangrove> : 50,
    <item:magic_vibe_decorations:bksoak> : 50,
    <item:magic_vibe_decorations:bkspruce> : 50,
    <item:magic_vibe_decorations:blue_crystal_fairy_lights> : 5,
    <item:magic_vibe_decorations:bluepumpkin> : 75,
    <item:magic_vibe_decorations:bones> : 50,
    <item:magic_vibe_decorations:bookshelfjungle> : 50,
    <item:magic_vibe_decorations:booksstacksmall> : 50,
    <item:magic_vibe_decorations:candy> : 10,
    <item:magic_vibe_decorations:cherrybookshelf> : 50,
    <item:magic_vibe_decorations:cocoa> : 25,
    <item:magic_vibe_decorations:crystal_block> : 5,
    <item:magic_vibe_decorations:crystallised_obsidian> : 100,
    <item:magic_vibe_decorations:crystallised_obsidian_shard> : 25,
    <item:magic_vibe_decorations:fairylights> : 25,
    <item:magic_vibe_decorations:greenpumpkin> : 75,
    <item:magic_vibe_decorations:halloweenpies> : 50,
    <item:magic_vibe_decorations:herbs> : 10,
    <item:magic_vibe_decorations:hibernating_crystal_ball> : 525,
    <item:magic_vibe_decorations:lapis_crystal_block> : 125,
    <item:magic_vibe_decorations:lapis_crystal_lamp> : 125,
    <item:magic_vibe_decorations:lapis_crystal_shard> : 25,
    <item:magic_vibe_decorations:lapis_crystal_star_ball> : 125,
    <item:magic_vibe_decorations:obsidian_crystal_block> : 125,
    <item:magic_vibe_decorations:obsidian_crystal_lamp> : 125,
    <item:magic_vibe_decorations:obsidian_crystal_star_ball> : 125,
    <item:magic_vibe_decorations:pinkpumpkin> : 75,
    <item:magic_vibe_decorations:placeablepotions> : 5,
    <item:magic_vibe_decorations:pumpkin_soup> : 25,
    <item:magic_vibe_decorations:pumpkindecor> : 50,
    <item:magic_vibe_decorations:pumpkinmuffin> : 50,
    <item:magic_vibe_decorations:pumpkinmuffins> : 100,
    <item:magic_vibe_decorations:redpumpkin> : 75,
    <item:magic_vibe_decorations:rubellite_crystal> : 250,
    <item:magic_vibe_decorations:rubellite_crystal_block> : 350,
    <item:magic_vibe_decorations:rubellite_crystal_lamp> : 350,
    <item:magic_vibe_decorations:rubellite_fairy_lights> : 75,
    <item:magic_vibe_decorations:rubellite_shard> : 75,
    <item:magic_vibe_decorations:spider_plushie> : 200,
    <item:magic_vibe_decorations:triple_herbs> : 25,
    <item:magic_vibe_decorations:wall_mushroom_red> : 50,
    <item:magic_vibe_decorations:wall_mushrooms_brown> : 50,
    <item:magic_vibe_decorations:water_rune> : 5,
    <item:magic_vibe_decorations:yellowpumpkin> : 75
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