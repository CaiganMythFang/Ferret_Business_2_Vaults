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
    <item:dyenamics:aquamarine_shulker_box> : 75,
    <item:dyenamics:bubblegum_shulker_box> : 75,
    <item:dyenamics:cherenkov_shulker_box> : 75,
    <item:dyenamics:fluorescent_bed> : 25,
    <item:dyenamics:fluorescent_candle> : 75,
    <item:dyenamics:fluorescent_carpet> : 5,
    <item:dyenamics:fluorescent_concrete> : 1,
    <item:dyenamics:fluorescent_concrete_powder> : 1,
    <item:dyenamics:fluorescent_dye> : 5,
    <item:dyenamics:fluorescent_glazed_terracotta> : 50,
    <item:dyenamics:fluorescent_rockwool> : 1,
    <item:dyenamics:fluorescent_shulker_box> : 75,
    <item:dyenamics:fluorescent_stained_glass> : 1,
    <item:dyenamics:fluorescent_stained_glass_pane> : 1,
    <item:dyenamics:fluorescent_terracotta> : 50,
    <item:dyenamics:fluorescent_wool> : 10,
    <item:dyenamics:lavender_shulker_box> : 75,
    <item:dyenamics:maroon_shulker_box> : 75,
    <item:dyenamics:mint_shulker_box> : 75,
    <item:dyenamics:peach_shulker_box> : 75,
    <item:dyenamics:persimmon_shulker_box> : 75,
    <item:dyenamics:aquamarine_bed> : 25,
    <item:dyenamics:aquamarine_candle> : 75,
    <item:dyenamics:aquamarine_carpet> : 5,
    <item:dyenamics:aquamarine_concrete> : 1,
    <item:dyenamics:aquamarine_concrete_powder> : 1,
    <item:dyenamics:aquamarine_dye> : 5,
    <item:dyenamics:aquamarine_glazed_terracotta> : 50,
    <item:dyenamics:aquamarine_rockwool> : 1,
    <item:dyenamics:aquamarine_stained_glass> : 1,
    <item:dyenamics:aquamarine_stained_glass_pane> : 1,
    <item:dyenamics:aquamarine_terracotta> : 50,
    <item:dyenamics:aquamarine_wool> : 10,
    <item:dyenamics:bubblegum_bed> : 25,
    <item:dyenamics:bubblegum_candle> : 75,
    <item:dyenamics:bubblegum_carpet> : 5,
    <item:dyenamics:bubblegum_concrete> : 1,
    <item:dyenamics:bubblegum_concrete_powder> : 1,
    <item:dyenamics:bubblegum_dye> : 5,
    <item:dyenamics:bubblegum_glazed_terracotta> : 50,
    <item:dyenamics:bubblegum_rockwool> : 1,
    <item:dyenamics:bubblegum_stained_glass> : 1,
    <item:dyenamics:bubblegum_stained_glass_pane> : 1,
    <item:dyenamics:bubblegum_terracotta> : 50,
    <item:dyenamics:bubblegum_wool> : 10,
    <item:dyenamics:cherenkov_bed> : 25,
    <item:dyenamics:cherenkov_candle> : 75,
    <item:dyenamics:cherenkov_carpet> : 5,
    <item:dyenamics:cherenkov_concrete> : 1,
    <item:dyenamics:cherenkov_concrete_powder> : 1,
    <item:dyenamics:cherenkov_dye> : 5,
    <item:dyenamics:cherenkov_glazed_terracotta> : 50,
    <item:dyenamics:cherenkov_rockwool> : 1,
    <item:dyenamics:cherenkov_stained_glass> : 1,
    <item:dyenamics:cherenkov_stained_glass_pane> : 1,
    <item:dyenamics:cherenkov_terracotta> : 50,
    <item:dyenamics:cherenkov_wool> : 10,
    <item:dyenamics:lavender_bed> : 25,
    <item:dyenamics:lavender_candle> : 75,
    <item:dyenamics:lavender_carpet> : 5,
    <item:dyenamics:lavender_concrete> : 1,
    <item:dyenamics:lavender_concrete_powder> : 1,
    <item:dyenamics:lavender_dye> : 5,
    <item:dyenamics:lavender_glazed_terracotta> : 50,
    <item:dyenamics:lavender_rockwool> : 1,
    <item:dyenamics:lavender_stained_glass> : 1,
    <item:dyenamics:lavender_stained_glass_pane> : 1,
    <item:dyenamics:lavender_terracotta> : 50,
    <item:dyenamics:lavender_wool> : 10,
    <item:dyenamics:maroon_bed> : 25,
    <item:dyenamics:maroon_candle> : 75,
    <item:dyenamics:maroon_carpet> : 5,
    <item:dyenamics:maroon_concrete> : 1,
    <item:dyenamics:maroon_concrete_powder> : 1,
    <item:dyenamics:maroon_dye> : 5,
    <item:dyenamics:maroon_glazed_terracotta> : 50,
    <item:dyenamics:maroon_rockwool> : 1,
    <item:dyenamics:maroon_stained_glass> : 1,
    <item:dyenamics:maroon_stained_glass_pane> : 1,
    <item:dyenamics:maroon_terracotta> : 50,
    <item:dyenamics:maroon_wool> : 10,
    <item:dyenamics:mint_bed> : 25,
    <item:dyenamics:mint_candle> : 75,
    <item:dyenamics:mint_carpet> : 5,
    <item:dyenamics:mint_concrete> : 1,
    <item:dyenamics:mint_concrete_powder> : 1,
    <item:dyenamics:mint_dye> : 5,
    <item:dyenamics:mint_glazed_terracotta> : 50,
    <item:dyenamics:mint_rockwool> : 1,
    <item:dyenamics:mint_stained_glass> : 1,
    <item:dyenamics:mint_stained_glass_pane> : 1,
    <item:dyenamics:mint_terracotta> : 50,
    <item:dyenamics:mint_wool> : 10,
    <item:dyenamics:peach_bed> : 25,
    <item:dyenamics:peach_candle> : 75,
    <item:dyenamics:peach_carpet> : 5,
    <item:dyenamics:peach_concrete> : 1,
    <item:dyenamics:peach_concrete_powder> : 1,
    <item:dyenamics:peach_dye> : 5,
    <item:dyenamics:peach_glazed_terracotta> : 50,
    <item:dyenamics:peach_rockwool> : 1,
    <item:dyenamics:peach_stained_glass> : 1,
    <item:dyenamics:peach_stained_glass_pane> : 1,
    <item:dyenamics:peach_terracotta> : 50,
    <item:dyenamics:peach_wool> : 10,
    <item:dyenamics:persimmon_bed> : 25,
    <item:dyenamics:persimmon_candle> : 75,
    <item:dyenamics:persimmon_carpet> : 5,
    <item:dyenamics:persimmon_concrete> : 1,
    <item:dyenamics:persimmon_concrete_powder> : 1,
    <item:dyenamics:persimmon_dye> : 5,
    <item:dyenamics:persimmon_glazed_terracotta> : 50,
    <item:dyenamics:persimmon_rockwool> : 1,
    <item:dyenamics:persimmon_stained_glass> : 1,
    <item:dyenamics:persimmon_stained_glass_pane> : 1,
    <item:dyenamics:persimmon_terracotta> : 50,
    <item:dyenamics:persimmon_wool> : 10
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