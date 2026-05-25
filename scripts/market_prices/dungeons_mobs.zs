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
    <item:dungeons_mobs:skeleton_vanguard_spawn_egg> : 250,
    <item:dungeons_mobs:royal_guard_spawn_egg> : 250,
    <item:dungeons_mobs:redstone_golem_spawn_egg> : 250,
    <item:dungeons_mobs:quick_growing_vine_spawn_egg> : 250,
    <item:dungeons_mobs:whisperer_spawn_egg> : 250,
    <item:dungeons_mobs:wildfire_spawn_egg> : 250,
    <item:dungeons_mobs:windcaller_spawn_egg> : 250,
    <item:dungeons_mobs:wraith_spawn_egg> : 250,
    <item:dungeons_mobs:zombified_fungus_thrower_spawn_egg> : 250,
    <item:dungeons_mobs:iceologer_spawn_egg> : 250,
    <item:dungeons_mobs:icy_creeper_spawn_egg> : 250,
    <item:dungeons_mobs:illusioner_spawn_egg> : 250,
    <item:dungeons_mobs:blastling_spawn_egg> : 250,
    <item:dungeons_mobs:jungle_zombie_spawn_egg> : 250,
    <item:dungeons_mobs:endersent_spawn_egg> : 250,
    <item:dungeons_mobs:drowned_necromancer_spawn_egg> : 250,
    <item:dungeons_mobs:leapleaf_spawn_egg> : 250,
    <item:dungeons_mobs:mage_spawn_egg> : 250,
    <item:dungeons_mobs:mossy_skeleton_spawn_egg> : 250,
    <item:dungeons_mobs:mountaineer_spawn_egg> : 250,
    <item:dungeons_mobs:frozen_zombie_spawn_egg> : 250,
    <item:dungeons_mobs:fungus_thrower_spawn_egg> : 250,
    <item:dungeons_mobs:geomancer_spawn_egg> : 250,
    <item:dungeons_mobs:necromancer_spawn_egg> : 250,
    <item:dungeons_mobs:poison_anemone_spawn_egg> : 250,
    <item:dungeons_mobs:poison_quill_vine_spawn_egg> : 250,
    <item:dungeons_mobs:quick_growing_kelp_spawn_egg> : 250,
    <item:dungeons_mobs:wavewhisperer_spawn_egg> : 250,
    <item:dungeons_mobs:watchling_spawn_egg> : 250,
    <item:dungeons_mobs:sunken_skeleton_spawn_egg> : 250,
    <item:dungeons_mobs:squall_golem_spawn_egg> : 250,
    <item:dungeons_mobs:snareling_spawn_egg> : 250
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