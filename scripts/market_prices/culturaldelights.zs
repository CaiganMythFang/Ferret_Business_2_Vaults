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
    <item:culturaldelights:avocado_bundle> : 0,
    <item:culturaldelights:avocado> : 5,
    <item:culturaldelights:avocado_crate> : 50,
    <item:culturaldelights:avocado_leaves> : 1,
    <item:culturaldelights:avocado_log> : 2,
    <item:culturaldelights:avocado_pit> : 2,
    <item:culturaldelights:avocado_sapling> : 5,
    <item:culturaldelights:avocado_toast> : 5,
    <item:culturaldelights:avocado_wood> : 1,
    <item:culturaldelights:beef_burrito> : 25,
    <item:culturaldelights:calamari_roll> : 10,
    <item:culturaldelights:chicken_roll> : 50,
    <item:culturaldelights:chicken_roll_slice> : 25,
    <item:culturaldelights:chicken_taco> : 25,
    <item:culturaldelights:cooked_calamari> : 5,
    <item:culturaldelights:cooked_squid> : 25,
    <item:culturaldelights:corn_cob> : 5,
    <item:culturaldelights:corn_cob_crate> : 50,
    <item:culturaldelights:corn_dough> : 5,
    <item:culturaldelights:corn_kernels> : 2,
    <item:culturaldelights:creamed_corn> : 10,
    <item:culturaldelights:cucumber> : 5,
    <item:culturaldelights:cucumber_crate> : 50,
    <item:culturaldelights:cucumber_seeds> : 5,
    <item:culturaldelights:cut_avocado> : 2,
    <item:culturaldelights:cut_cucumber> : 2,
    <item:culturaldelights:cut_eggplant> : 2,
    <item:culturaldelights:cut_pickle> : 2,
    <item:culturaldelights:egg_roll> : 25,
    <item:culturaldelights:eggplant> : 5,
    <item:culturaldelights:eggplant_burger> : 25,
    <item:culturaldelights:eggplant_crate> : 50,
    <item:culturaldelights:eggplant_seeds> : 5,
    <item:culturaldelights:elote> : 10,
    <item:culturaldelights:exotic_roll_medley> : 300,
    <item:culturaldelights:fish_taco> : 25,
    <item:culturaldelights:fried_eggplant_pasta> : 25,
    <item:culturaldelights:glow_squid> : 25,
    <item:culturaldelights:hearty_salad> : 25,
    <item:culturaldelights:midori_roll> : 25,
    <item:culturaldelights:midori_roll_slice> : 10,
    <item:culturaldelights:mutton_sandwich> : 50,
    <item:culturaldelights:pickle> : 5,
    <item:culturaldelights:pickle_crate> : 50,
    <item:culturaldelights:popcorn> : 2,
    <item:culturaldelights:pork_wrap> : 25,
    <item:culturaldelights:pufferfish_roll> : 25,
    <item:culturaldelights:raw_calamari> : 5,
    <item:culturaldelights:rice_ball> : 5,
    <item:culturaldelights:smoked_corn> : 5,
    <item:culturaldelights:smoked_cut_eggplant> : 5,
    <item:culturaldelights:smoked_eggplant> : 5,
    <item:culturaldelights:smoked_tomato> : 5,
    <item:culturaldelights:smoked_white_eggplant> : 5,
    <item:culturaldelights:spicy_curry> : 50,
    <item:culturaldelights:squid> : 25,
    <item:culturaldelights:tortilla> : 5,
    <item:culturaldelights:tortilla_chips> : 2,
    <item:culturaldelights:tropical_roll> : 25,
    <item:culturaldelights:white_eggplant> : 5,
    <item:culturaldelights:white_eggplant_crate> : 50,
    <item:culturaldelights:wild_corn> : 5,
    <item:culturaldelights:wild_cucumbers> : 5,
    <item:culturaldelights:wild_eggplants> : 5

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