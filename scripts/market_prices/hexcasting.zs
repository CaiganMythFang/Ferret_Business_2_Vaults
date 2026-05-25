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
    <item:hexcasting:akashic_connector> : 900,
    <item:hexcasting:abacus> : 225,
    <item:hexcasting:akashic_record> : 250,
    <item:hexcasting:amethyst_sconce> : 100,
    <item:hexcasting:amethyst_tiles> : 100,
    <item:hexcasting:ancient_scroll_paper> : 1125,
    <item:hexcasting:ancient_scroll_paper_lantern> : 1125,
    <item:hexcasting:artifact> : 4200,
    <item:hexcasting:battery> : 1,
    <item:hexcasting:charged_amethyst> : 300,
    <item:hexcasting:cypher> : 3900,
    <item:hexcasting:directrix_redstone> : 2250,
    <item:hexcasting:empty_directrix> : 2000,
    <item:hexcasting:empty_impetus> : 2000,
    <item:hexcasting:focus> : 3850,
    <item:hexcasting:impetus_look> : 2250,
    <item:hexcasting:impetus_rightclick> : 2250,
    <item:hexcasting:impetus_storedplayer> : 2250,
    <item:hexcasting:pride_colorizer_agender> : 25,
    <item:hexcasting:pride_colorizer_aroace> : 25,
    <item:hexcasting:pride_colorizer_aromantic> : 25,
    <item:hexcasting:pride_colorizer_asexual> : 25,
    <item:hexcasting:pride_colorizer_bisexual> : 25,
    <item:hexcasting:pride_colorizer_demiboy> : 250,
    <item:hexcasting:pride_colorizer_demigirl> : 125,
    <item:hexcasting:pride_colorizer_gay> : 25,
    <item:hexcasting:pride_colorizer_genderfluid> : 25,
    <item:hexcasting:pride_colorizer_genderqueer> : 25,
    <item:hexcasting:pride_colorizer_intersex> : 25,
    <item:hexcasting:pride_colorizer_lesbian> : 50,
    <item:hexcasting:pride_colorizer_nonbinary> : 25,
    <item:hexcasting:pride_colorizer_pansexual> : 925,
    <item:hexcasting:pride_colorizer_plural> : 50,
    <item:hexcasting:pride_colorizer_transgender> : 50,
    <item:hexcasting:scroll> : 1225,
    <item:hexcasting:scroll_medium> : 625,
    <item:hexcasting:scroll_paper> : 1125,
    <item:hexcasting:scroll_paper_lantern> : 1125,
    <item:hexcasting:scroll_small> : 175,
    <item:hexcasting:slate> : 150,
    <item:hexcasting:slate_block> : 275,
    <item:hexcasting:spellbook> : 1175,
    <item:hexcasting:sub_sandwich> : 50,
    <item:hexcasting:trinket> : 4400,
    <item:hexcasting:uuid_colorizer> : 25,
    <item:hexcasting:wand_acacia> : 18375,
    <item:hexcasting:wand_akashic> : 18375,
    <item:hexcasting:wand_birch> : 18375,
    <item:hexcasting:wand_crimson> : 18375,
    <item:hexcasting:wand_dark_oak> : 18375,
    <item:hexcasting:wand_jungle> : 18375,
    <item:hexcasting:wand_oak> : 18375,
    <item:hexcasting:wand_spruce> : 18375,
    <item:hexcasting:wand_warped> : 18375,
    <item:hexcasting:akashic_bookshelf> : 50,
    <item:hexcasting:akashic_button> : 1,
    <item:hexcasting:akashic_door> : 2,
    <item:hexcasting:akashic_leaves1> : 1,
    <item:hexcasting:akashic_leaves2> : 1,
    <item:hexcasting:akashic_leaves3> : 1,
    <item:hexcasting:akashic_log> : 2,
    <item:hexcasting:akashic_log_stripped> : 2,
    <item:hexcasting:akashic_panel> : 1,
    <item:hexcasting:akashic_planks> : 1,
    <item:hexcasting:akashic_pressure_plate> : 2,
    <item:hexcasting:akashic_slab> : 1,
    <item:hexcasting:akashic_stairs> : 1,
    <item:hexcasting:akashic_tile> : 1,
    <item:hexcasting:akashic_trapdoor> : 2,
    <item:hexcasting:akashic_wood> : 2,
    <item:hexcasting:akashic_wood_stripped> : 2,
    <item:hexcasting:amethyst_dust> : 5,
    <item:hexcasting:amethyst_dust_block> : 50,
    <item:hexcasting:dye_colorizer_black> : 25,
    <item:hexcasting:dye_colorizer_blue> : 25,
    <item:hexcasting:dye_colorizer_brown> : 25,
    <item:hexcasting:dye_colorizer_cyan> : 25,
    <item:hexcasting:dye_colorizer_gray> : 25,
    <item:hexcasting:dye_colorizer_green> : 25,
    <item:hexcasting:dye_colorizer_light_blue> : 25,
    <item:hexcasting:dye_colorizer_light_gray> : 25,
    <item:hexcasting:dye_colorizer_lime> : 25,
    <item:hexcasting:dye_colorizer_magenta> : 25,
    <item:hexcasting:dye_colorizer_orange> : 25,
    <item:hexcasting:dye_colorizer_pink> : 25,
    <item:hexcasting:dye_colorizer_purple> : 25,
    <item:hexcasting:dye_colorizer_red> : 25,
    <item:hexcasting:dye_colorizer_white> : 25,
    <item:hexcasting:dye_colorizer_yellow> : 25,
    <item:hexcasting:jeweler_hammer> : 225,
    <item:hexcasting:lens> : 100
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