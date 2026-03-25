import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:botanicalextramachinery:catalyst_living_rock_infinity> : 149868525,
    <item:botanicalextramachinery:catalyst_mana_infinity> : 501332000,
    <item:botanicalextramachinery:catalyst_seed_infinity> : 332998275,
    <item:botanicalextramachinery:catalyst_speed> : 149872475,
    <item:botanicalextramachinery:catalyst_stone_infinity> : 287411025,
    <item:botanicalextramachinery:catalyst_water_infinity> : 186735750,
    <item:botanicalextramachinery:catalyst_wood_infinity> : 333013275,
    <item:botanicalextramachinery:crimson_spark> : 106451775,
    <item:botanicalextramachinery:ultimate_alfheim_market> : 331311050,
    <item:botanicalextramachinery:ultimate_apothecary> : 195455775,
    <item:botanicalextramachinery:ultimate_daisy> : 195470775,
    <item:botanicalextramachinery:ultimate_industrial_agglomeration_factory> : 195461600,
    <item:botanicalextramachinery:ultimate_mana_pool> : 195461250,
    <item:botanicalextramachinery:ultimate_orechid> : 189889950,
    <item:botanicalextramachinery:ultimate_runic_altar> : 195457650,
    <item:botanicalextramachinery:crimson_dragonstone_block> : 43517250,
    <item:botanicalextramachinery:crimson_ingot_block> : 32364675,
    <item:botanicalextramachinery:shadow_spark> : 26919850,
    <item:botanicalextramachinery:shadow_dragonstone_block> : 11071575,
    <item:botanicalextramachinery:advanced_alfheim_market> : 185048525,
    <item:botanicalextramachinery:advanced_apothecary> : 49193250,
    <item:botanicalextramachinery:advanced_daisy> : 49208250,
    <item:botanicalextramachinery:advanced_industrial_agglomeration_factory> : 49199075,
    <item:botanicalextramachinery:advanced_mana_pool> : 49198725,
    <item:botanicalextramachinery:advanced_orechid> : 48349975,
    <item:botanicalextramachinery:advanced_runic_altar> : 49195125,
    <item:botanicalextramachinery:crimson_dragonstone> : 4835250,
    <item:botanicalextramachinery:saffron_spark> : 6997425,
    <item:botanicalextramachinery:shadow_ingot_block> : 7939125,
    <item:botanicalextramachinery:crimson_ingot> : 3596075,
    <item:botanicalextramachinery:saffron_dragonstone_block> : 3110850,
    <item:botanicalextramachinery:saffron_ingot_block> : 2461275,
    <item:botanicalextramachinery:malachite_spark> : 1149150,
    <item:botanicalextramachinery:shadow_dragonstone> : 1230175,
    <item:botanicalextramachinery:upgraded_alfheim_market> : 148179425,
    <item:botanicalextramachinery:upgraded_apothecary> : 12324150,
    <item:botanicalextramachinery:upgraded_daisy> : 12339150,
    <item:botanicalextramachinery:upgraded_industrial_agglomeration_factory> : 12329975,
    <item:botanicalextramachinery:upgraded_mana_pool> : 12329625,
    <item:botanicalextramachinery:upgraded_orechid> : 12288875,
    <item:botanicalextramachinery:upgraded_runic_altar> : 12326025,
    <item:botanicalextramachinery:shadow_ingot> : 882125,
    <item:botanicalextramachinery:malachite_dragonstone_block> : 578475,
    <item:botanicalextramachinery:malachite_ingot_block> : 504000,
    <item:botanicalextramachinery:saffron_dragonstone> : 345650,
    <item:botanicalextramachinery:base_alfheim_market> : 1916900,
    <item:botanicalextramachinery:base_apothecary> : 1911075,
    <item:botanicalextramachinery:base_daisy> : 1926075,
    <item:botanicalextramachinery:base_industrial_agglomeration_factory> : 1916900,
    <item:botanicalextramachinery:base_mana_pool> : 1916550,
    <item:botanicalextramachinery:base_orechid> : 2072600,
    <item:botanicalextramachinery:base_runic_altar> : 1912950,
    <item:botanicalextramachinery:saffron_ingot> : 273475,
    <item:botanicalextramachinery:crystal_dragonstone> : 1550,
    <item:botanicalextramachinery:crystal_dragonstone_block> : 13950,
    <item:botanicalextramachinery:crystal_ingot> : 1500,
    <item:botanicalextramachinery:crystal_ingot_block> : 13500,
    <item:botanicalextramachinery:malachite_dragonstone> : 64275,
    <item:botanicalextramachinery:malachite_ingot> : 56000,
    <item:botanicalextramachinery:catalyst_petal> : 9225
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