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
    <item:secretroomsmod:secret_dummy_block> : 0,
    <item:secretroomsmod:secret_daylight_detector> : 375,
    <item:secretroomsmod:secret_iron_door> : 450,
    <item:secretroomsmod:secret_iron_trapdoor> : 900,
    <item:secretroomsmod:secret_observer> : 150,
    <item:secretroomsmod:secret_trapped_chest> : 125,
    <item:secretroomsmod:switch_probe> : 10,
    <item:secretroomsmod:true_vision_goggles> : 1000,
    <item:secretroomsmod:camouflage_paste> : 5,
    <item:secretroomsmod:ghost_block> : 10,
    <item:secretroomsmod:one_way_glass> : 2,
    <item:secretroomsmod:secret_chest> : 5,
    <item:secretroomsmod:secret_clamber> : 5,
    <item:secretroomsmod:secret_door> : 5,
    <item:secretroomsmod:secret_gate> : 50,
    <item:secretroomsmod:secret_lever> : 5,
    <item:secretroomsmod:secret_player_pressure_plate> : 5,
    <item:secretroomsmod:secret_pressure_plate> : 5,
    <item:secretroomsmod:secret_redstone> : 10,
    <item:secretroomsmod:secret_stairs> : 5,
    <item:secretroomsmod:secret_stone_button> : 5,
    <item:secretroomsmod:secret_trapdoor> : 5,
    <item:secretroomsmod:secret_wooden_button> : 5,
    <item:secretroomsmod:torch_lever> : 2
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