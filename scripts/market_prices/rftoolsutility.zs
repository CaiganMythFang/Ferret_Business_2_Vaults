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
    <item:rftoolsutility:computer_module> : 0,
    <item:rftoolsutility:inventoryplus_module> : 0,
    <item:rftoolsutility:inventory_module> : 0,
    <item:rftoolsutility:teleport_probe> : 0,
    <item:rftoolsutility:tablet_redstone> : 0,
    <item:rftoolsutility:tablet_screen> : 0,
    <item:rftoolsutility:advanced_charged_porter> : 138725,
    <item:rftoolsutility:analog> : 400,
    <item:rftoolsutility:blindness_module> : 32600,
    <item:rftoolsutility:button_module> : 500,
    <item:rftoolsutility:charged_porter> : 123525,
    <item:rftoolsutility:clock_module> : 5900,
    <item:rftoolsutility:counter> : 3125,
    <item:rftoolsutility:counter_module> : 800,
    <item:rftoolsutility:counterplus_module> : 3600,
    <item:rftoolsutility:crafter1> : 39325,
    <item:rftoolsutility:crafter2> : 157650,
    <item:rftoolsutility:crafter3> : 276975,
    <item:rftoolsutility:creative_screen> : 381500,
    <item:rftoolsutility:destination_analyzer> : 3600,
    <item:rftoolsutility:dialing_device> : 3875,
    <item:rftoolsutility:digit> : 250,
    <item:rftoolsutility:energy_module> : 525,
    <item:rftoolsutility:energyplus_module> : 3325,
    <item:rftoolsutility:environmental_controller> : 308875,
    <item:rftoolsutility:featherfalling_module> : 32650,
    <item:rftoolsutility:featherfallingplus_module> : 111675,
    <item:rftoolsutility:flight_module> : 181400,
    <item:rftoolsutility:fluid_module> : 1850,
    <item:rftoolsutility:fluidplus_module> : 4650,
    <item:rftoolsutility:glowing_module> : 32225,
    <item:rftoolsutility:haste_module> : 31825,
    <item:rftoolsutility:hasteplus_module> : 110850,
    <item:rftoolsutility:invchecker> : 400,
    <item:rftoolsutility:logic> : 850,
    <item:rftoolsutility:luck_module> : 32650,
    <item:rftoolsutility:machineinformation_module> : 500,
    <item:rftoolsutility:matter_beamer> : 4225,
    <item:rftoolsutility:matter_booster> : 125025,
    <item:rftoolsutility:matter_receiver> : 4425,
    <item:rftoolsutility:matter_transmitter> : 4425,
    <item:rftoolsutility:module_template> : 3125,
    <item:rftoolsutility:moduleplus_template> : 31900,
    <item:rftoolsutility:nightvision_module> : 32225,
    <item:rftoolsutility:noteleport_module> : 38200,
    <item:rftoolsutility:peaceful_module> : 87575,
    <item:rftoolsutility:poison_module> : 31825,
    <item:rftoolsutility:redstone_information> : 400,
    <item:rftoolsutility:redstone_module> : 550,
    <item:rftoolsutility:redstone_receiver> : 700,
    <item:rftoolsutility:redstone_transmitter> : 425,
    <item:rftoolsutility:regeneration_module> : 69750,
    <item:rftoolsutility:regenerationplus_module> : 170425,
    <item:rftoolsutility:saturation_module> : 32800,
    <item:rftoolsutility:saturationplus_module> : 111075,
    <item:rftoolsutility:screen> : 500,
    <item:rftoolsutility:screen_controller> : 4850,
    <item:rftoolsutility:screen_link> : 150,
    <item:rftoolsutility:sensor> : 1050,
    <item:rftoolsutility:sequencer> : 300,
    <item:rftoolsutility:simple_dialer> : 475,
    <item:rftoolsutility:slowness_module> : 31800,
    <item:rftoolsutility:spawner> : 25900,
    <item:rftoolsutility:speed_module> : 36525,
    <item:rftoolsutility:speedplus_module> : 117200,
    <item:rftoolsutility:syringe> : 725,
    <item:rftoolsutility:tank> : 5375,
    <item:rftoolsutility:text_module> : 500,
    <item:rftoolsutility:timer> : 3000,
    <item:rftoolsutility:waterbreathing_module> : 78700,
    <item:rftoolsutility:weakness_module> : 31825,
    <item:rftoolsutility:wire> : 250
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