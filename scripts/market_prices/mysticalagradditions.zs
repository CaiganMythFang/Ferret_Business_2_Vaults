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
    <item:mysticalagradditions:awakened_draconium_crux> : 0,
    <item:mysticalagradditions:creative_essence> : 0,
    <item:mysticalagradditions:dragon_egg_chunk> : 0,
    <item:mysticalagradditions:dragon_egg_crux> : 0,
    <item:mysticalagradditions:dragon_scale> : 0,
    <item:mysticalagradditions:end_inferium_ore> : 0,
    <item:mysticalagradditions:end_prosperity_ore> : 0,
    <item:mysticalagradditions:gaia_spirit_crux> : 0,
    <item:mysticalagradditions:imperium_apple> : 0,
    <item:mysticalagradditions:nether_star_crux> : 0,
    <item:mysticalagradditions:nether_prosperity_ore> : 0,
    <item:mysticalagradditions:nether_inferium_ore> : 0,
    <item:mysticalagradditions:molten_tertium_bucket> : 0,
    <item:mysticalagradditions:molten_supremium_bucket> : 0,
    <item:mysticalagradditions:molten_soulium_bucket> : 0,
    <item:mysticalagradditions:molten_prudentium_bucket> : 0,
    <item:mysticalagradditions:molten_inferium_bucket> : 0,
    <item:mysticalagradditions:molten_imperium_bucket> : 0,
    <item:mysticalagradditions:insanium_coal> : 0,
    <item:mysticalagradditions:insanium_coal_block> : 0,
    <item:mysticalagradditions:insanium_essence> : 0,
    <item:mysticalagradditions:insanium_farmland> : 0,
    <item:mysticalagradditions:insanium_gemstone> : 0,
    <item:mysticalagradditions:insanium_gemstone_block> : 0,
    <item:mysticalagradditions:insanium_ingot> : 0,
    <item:mysticalagradditions:insanium_ingot_block> : 0,
    <item:mysticalagradditions:insanium_nugget> : 0,
    <item:mysticalagradditions:insanium_block> : 0,
    <item:mysticalagradditions:insanium_apple> : 0,
    <item:mysticalagradditions:inferium_paxel> : 0,
    <item:mysticalagradditions:inferium_coal_block> : 0,
    <item:mysticalagradditions:inferium_coal> : 0,
    <item:mysticalagradditions:inferium_apple> : 0,
    <item:mysticalagradditions:imperium_paxel> : 0,
    <item:mysticalagradditions:imperium_coal_block> : 0,
    <item:mysticalagradditions:imperium_coal> : 0,
    <item:mysticalagradditions:nether_star_shard> : 0,
    <item:mysticalagradditions:neutronium_crux> : 0,
    <item:mysticalagradditions:nitro_crystal_crux> : 0,
    <item:mysticalagradditions:prudentium_apple> : 0,
    <item:mysticalagradditions:prudentium_coal> : 0,
    <item:mysticalagradditions:prudentium_coal_block> : 0,
    <item:mysticalagradditions:prudentium_paxel> : 0,
    <item:mysticalagradditions:supremium_apple> : 0,
    <item:mysticalagradditions:supremium_coal_block> : 0,
    <item:mysticalagradditions:supremium_paxel> : 0,
    <item:mysticalagradditions:tertium_apple> : 0,
    <item:mysticalagradditions:tertium_coal> : 0,
    <item:mysticalagradditions:tertium_coal_block> : 0,
    <item:mysticalagradditions:tertium_paxel> : 0,
    <item:mysticalagradditions:withering_soul> : 0,
    <item:mysticalagradditions:supremium_coal> : 0
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