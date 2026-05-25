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
    <item:immersivepetroleum:gas_generator> : 97850,
    <item:immersivepetroleum:benzene_bucket> : 875,
    <item:immersivepetroleum:bitumen> : 50,
    <item:immersivepetroleum:diesel_bucket> : 1925,
    <item:immersivepetroleum:diesel_sulfur_bucket> : 875,
    <item:immersivepetroleum:ethylene_bucket> : 875,
    <item:immersivepetroleum:flarestack> : 6775,
    <item:immersivepetroleum:gasoline_additives_bucket> : 800,
    <item:immersivepetroleum:gasoline_bottle> : 400,
    <item:immersivepetroleum:gasoline_bucket> : 2350,
    <item:immersivepetroleum:kerosene_bucket> : 800,
    <item:immersivepetroleum:lubricant_bucket> : 750,
    <item:immersivepetroleum:lubricant_cracked_bucket> : 750,
    <item:immersivepetroleum:molotov> : 425,
    <item:immersivepetroleum:napalm_bucket> : 2800,
    <item:immersivepetroleum:naphtha_bucket> : 875,
    <item:immersivepetroleum:naphtha_cracked_bucket> : 875,
    <item:immersivepetroleum:oil_can> : 1125,
    <item:immersivepetroleum:paraffin_wax> : 10,
    <item:immersivepetroleum:paraffin_wax_block> : 100,
    <item:immersivepetroleum:petcoke> : 10,
    <item:immersivepetroleum:petcoke_block> : 100,
    <item:immersivepetroleum:petcoke_dust> : 10,
    <item:immersivepetroleum:projector> : 900,
    <item:immersivepetroleum:propylene_bucket> : 875,
    <item:immersivepetroleum:seismic_survey> : 5725,
    <item:immersivepetroleum:speedboat> : 2725,
    <item:immersivepetroleum:upgrade_icebreaker> : 3375,
    <item:immersivepetroleum:upgrade_reinforced_hull> : 2925,
    <item:immersivepetroleum:upgrade_rudders> : 1550,
    <item:immersivepetroleum:upgrade_tank> : 2350,
    <item:immersivepetroleum:asphalt> : 10,
    <item:immersivepetroleum:asphalt_slab> : 5,
    <item:immersivepetroleum:asphalt_stair> : 10,
    <item:immersivepetroleum:auto_lubricator> : 175,
    <item:immersivepetroleum:crudeoil_bucket> : 1175,
    <item:immersivepetroleum:upgrade_paddles> : 10
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