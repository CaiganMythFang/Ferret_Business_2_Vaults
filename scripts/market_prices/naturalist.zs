import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:naturalist:bluejay_spawn_egg> : 250,
    <item:naturalist:bear_spawn_egg> : 250,
    <item:naturalist:boar_spawn_egg> : 250,
    <item:naturalist:butterfly_spawn_egg> : 250,
    <item:naturalist:canary_spawn_egg> : 250,
    <item:naturalist:cardinal_spawn_egg> : 250,
    <item:naturalist:caterpillar_spawn_egg> : 250,
    <item:naturalist:coral_snake_spawn_egg> : 250,
    <item:naturalist:deer_spawn_egg> : 250,
    <item:naturalist:elephant_spawn_egg> : 250,
    <item:naturalist:firefly_spawn_egg> : 250,
    <item:naturalist:giraffe_spawn_egg> : 250,
    <item:naturalist:hippo_spawn_egg> : 250,
    <item:naturalist:lion_spawn_egg> : 250,
    <item:naturalist:rattlesnake_spawn_egg> : 250,
    <item:naturalist:rhino_spawn_egg> : 250,
    <item:naturalist:robin_spawn_egg> : 250,
    <item:naturalist:snail_spawn_egg> : 250,
    <item:naturalist:snake_spawn_egg> : 250,
    <item:naturalist:vulture_spawn_egg> : 250,
    <item:naturalist:zebra_spawn_egg> : 250,
    <item:naturalist:antler> : 25,
    <item:naturalist:bear_fur> : 25,
    <item:naturalist:chrysalis> : 25,
    <item:naturalist:cooked_venison> : 25,
    <item:naturalist:glow_goop> : 25,
    <item:naturalist:snail_bucket> : 675,
    <item:naturalist:snail_shell> : 25,
    <item:naturalist:teddy_bear> : 100,
    <item:naturalist:venison> : 25
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
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
}