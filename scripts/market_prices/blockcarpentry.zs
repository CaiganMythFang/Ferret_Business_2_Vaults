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
    <item:blockcarpentry:explosion_resistance_ball> : 4075,
    <item:blockcarpentry:frame_daylight_detector> : 375,
    <item:blockcarpentry:hammer> : 1800,
    <item:blockcarpentry:illusion_daylight_detector> : 400,
    <item:blockcarpentry:paintbrush> : 125,
    <item:blockcarpentry:texture_wrench> : 675,
    <item:blockcarpentry:chisel> : 225,
    <item:blockcarpentry:frame_bed> : 25,
    <item:blockcarpentry:frame_sign> : 1,
    <item:blockcarpentry:illusion_sign> : 1,
    <item:blockcarpentry:frame_button> : 1,
    <item:blockcarpentry:frame_carpet> : 5,
    <item:blockcarpentry:frame_chest> : 10,
    <item:blockcarpentry:frame_door> : 2,
    <item:blockcarpentry:frame_edged_slope> : 1,
    <item:blockcarpentry:frame_fence> : 1,
    <item:blockcarpentry:frame_fence_gate> : 5,
    <item:blockcarpentry:frame_ladder> : 1,
    <item:blockcarpentry:frame_layered_block> : 5,
    <item:blockcarpentry:frame_pane> : 2,
    <item:blockcarpentry:frame_pressure_plate> : 2,
    <item:blockcarpentry:frame_slab> : 1,
    <item:blockcarpentry:frame_slope> : 1,
    <item:blockcarpentry:frame_stairs> : 1,
    <item:blockcarpentry:frame_trapdoor> : 2,
    <item:blockcarpentry:frame_wall> : 1,
    <item:blockcarpentry:frameblock> : 1,
    <item:blockcarpentry:illusion_bed> : 75,
    <item:blockcarpentry:illusion_block> : 25,
    <item:blockcarpentry:illusion_button> : 25,
    <item:blockcarpentry:illusion_carpet> : 25,
    <item:blockcarpentry:illusion_chest> : 50,
    <item:blockcarpentry:illusion_door> : 25,
    <item:blockcarpentry:illusion_fence> : 25,
    <item:blockcarpentry:illusion_fence_gate> : 50,
    <item:blockcarpentry:illusion_ladder> : 25,
    <item:blockcarpentry:illusion_layered_block> : 50,
    <item:blockcarpentry:illusion_pane> : 25,
    <item:blockcarpentry:illusion_pressure_plate> : 25,
    <item:blockcarpentry:illusion_slab> : 25,
    <item:blockcarpentry:illusion_stairs> : 25,
    <item:blockcarpentry:illusion_trapdoor> : 50,
    <item:blockcarpentry:illusion_wall> : 25
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