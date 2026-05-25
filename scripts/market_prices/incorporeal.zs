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
    <item:incorporeal:potion_soul_core> : 0,
    <item:immersivepetroleum:survey_result> : 0,
    <item:incorporeal:pointed_datastone> : 0,
    <item:incorporeal:matcher_ticket> : 0,
    <item:incorporeal:solidified_request_ticket> : 0,
    <item:incorporeal:matcher_lens> : 0,
    <item:incorporeal:negating_lens> : 0,
    <item:incorporeal:number_lens> : 0,
    <item:incorporeal:computational_lens_pattern> : 0,
    <item:incorporeal:data_monocle> : 0,
    <item:incorporeal:datastone_block> : 0,
    <item:incorporeal:bound_ender_pearl> : 0,
    <item:incorporeal:clearly> : 0,
    <item:incorporeal:enterbrilliance> : 0,
    <item:incorporeal:empty_ticket> : 0,
    <item:incorporeal:data_funnel> : 0,
    <item:incorporeal:integer_ticket> : 0,
    <item:incorporeal:computational_lens_pattern> : 0,
    <item:incorporeal:data_monocle> : 0,
    <item:incorporeal:datastone_block> : 0,
    <item:incorporeal:bound_ender_pearl> : 0,
    <item:incorporeal:clearly> : 0,
    <item:incorporeal:enterbrilliance> : 0,
    <item:incorporeal:empty_ticket> : 0,
    <item:incorporeal:data_funnel> : 0,
    <item:incorporeal:integer_ticket> : 0,
    <item:incorporeal:octuple_compressed_tiny_potato> : 0,
    <item:incorporeal:septuple_compressed_tiny_potato> : 0,
    <item:incorporeal:sextuple_compressed_tiny_potato> : 13286025,
    <item:incorporeal:quintuple_compressed_tiny_potato> : 1476225,
    <item:incorporeal:fractured_space_rod> : 21800,
    <item:incorporeal:quadruple_compressed_tiny_potato> : 164050,
    <item:incorporeal:corporea_pylon> : 10875,
    <item:incorporeal:corporea_solidifier> : 17300,
    <item:incorporeal:empty_conjurer> : 13150,
    <item:incorporeal:ender_soul_core> : 5400,
    <item:incorporeal:floating_sanvocalia> : 3125,
    <item:incorporeal:floating_sanvocalia_chibi> : 3150,
    <item:incorporeal:integer_conjurer> : 13150,
    <item:incorporeal:matcher_conjurer> : 13150,
    <item:incorporeal:sanvocalia> : 3075,
    <item:incorporeal:sanvocalia_chibi> : 3100,
    <item:incorporeal:solidified_request_conjurer> : 13150,
    <item:incorporeal:soul_core_frame> : 1000,
    <item:incorporeal:black_unstable_cube> : 25,
    <item:incorporeal:blue_unstable_cube> : 25,
    <item:incorporeal:brown_unstable_cube> : 25,
    <item:incorporeal:cyan_unstable_cube> : 25,
    <item:incorporeal:double_compressed_tiny_potato> : 2025,
    <item:incorporeal:floating_funny> : 25,
    <item:incorporeal:floating_funny_chibi> : 75,
    <item:incorporeal:funny> : 10,
    <item:incorporeal:funny_chibi> : 50,
    <item:incorporeal:gray_unstable_cube> : 25,
    <item:incorporeal:green_unstable_cube> : 25,
    <item:incorporeal:light_blue_unstable_cube> : 25,
    <item:incorporeal:light_gray_unstable_cube> : 25,
    <item:incorporeal:lime_unstable_cube> : 25,
    <item:incorporeal:magenta_unstable_cube> : 25,
    <item:incorporeal:natural_comparator> : 10,
    <item:incorporeal:natural_repeater> : 10,
    <item:incorporeal:orange_unstable_cube> : 25,
    <item:incorporeal:pink_unstable_cube> : 25,
    <item:incorporeal:purple_unstable_cube> : 25,
    <item:incorporeal:red_string_constrictor> : 500,
    <item:incorporeal:red_string_liar> : 1850,
    <item:incorporeal:red_unstable_cube> : 25,
    <item:incorporeal:triple_compressed_tiny_potato> : 18225,
    <item:incorporeal:white_unstable_cube> : 25,
    <item:incorporeal:yellow_unstable_cube> : 25,
    <item:incorporeal:black_petal_block_carpet> : 5,
    <item:incorporeal:blue_petal_block_carpet> : 5,
    <item:incorporeal:brown_petal_block_carpet> : 5,
    <item:incorporeal:cyan_petal_block_carpet> : 5,
    <item:incorporeal:frame_tinkerer> : 175,
    <item:incorporeal:gray_petal_block_carpet> : 5,
    <item:incorporeal:green_petal_block_carpet> : 5,
    <item:incorporeal:light_blue_petal_block_carpet> : 5,
    <item:incorporeal:light_gray_petal_block_carpet> : 5,
    <item:incorporeal:lime_petal_block_carpet> : 5,
    <item:incorporeal:magenta_petal_block_carpet> : 5,
    <item:incorporeal:orange_petal_block_carpet> : 5,
    <item:incorporeal:pink_petal_block_carpet> : 5,
    <item:incorporeal:purple_petal_block_carpet> : 5,
    <item:incorporeal:red_petal_block_carpet> : 5,
    <item:incorporeal:single_compressed_tiny_potato> : 225,
    <item:incorporeal:tiny_tiny_potato> : 2,
    <item:incorporeal:tiny_tiny_tiny_potato> : 0,
    <item:incorporeal:tiny_tiny_tiny_tiny_potato> : 0,
    <item:incorporeal:tiny_tiny_tiny_tiny_tiny_potato> : 0,
    <item:incorporeal:white_petal_block_carpet> : 5,
    <item:incorporeal:yellow_petal_block_carpet> : 5
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