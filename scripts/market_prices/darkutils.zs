import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// This variable controls whether we are in the pack dev mode or release mode. In Pack Dev mode, all EMC/FMC values are enabled to help calculate EMC/FMC for other mods.
var release_mode = false;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:darkutils:damage_plate_player> : 127500,
    <item:darkutils:damage_plate> : 18400,
    <item:darkutils:levitation_plate> : 25,
    <item:darkutils:omen_plate> : 11475,
    <item:darkutils:vector_plate_ultra> : 16700,
    <item:darkutils:wither_plate> : 5,
    <item:darkutils:alert_plate> : 10,
    <item:darkutils:charm_portal> : 5000,
    <item:darkutils:charm_sleep> : 2775,
    <item:darkutils:damage_plate_maim> : 100,
    <item:darkutils:darkness_plate> : 75,
    <item:darkutils:fatigue_plate> : 5,
    <item:darkutils:filter_equipment> : 1350,
    <item:darkutils:filter_fire_immune> : 5,
    <item:darkutils:filter_illager> : 75,
    <item:darkutils:filter_named> : 10,
    <item:darkutils:filter_player> : 1350,
    <item:darkutils:filter_raider> : 1075,
    <item:darkutils:filter_slime> : 10,
    <item:darkutils:filter_villager> : 250,
    <item:darkutils:flame_plate> : 50,
    <item:darkutils:hunger_plate> : 25,
    <item:darkutils:misfortune_plate> : 325,
    <item:darkutils:poison_plate> : 10,
    <item:darkutils:redstone_randomizer> : 175,
    <item:darkutils:shielded_redstone> : 100,
    <item:darkutils:slowness_plate> : 25,
    <item:darkutils:vector_plate_extreme> : 300,
    <item:darkutils:vector_plate_fast> : 175,
    <item:darkutils:weakness_plate> : 10,
    <item:darkutils:blank_plate> : 50,
    <item:darkutils:filter_animal> : 10,
    <item:darkutils:filter_arthropod> : 10,
    <item:darkutils:filter_child> : 10,
    <item:darkutils:filter_freeze_immune> : 2,
    <item:darkutils:filter_golem> : 2,
    <item:darkutils:filter_hostile> : 10,
    <item:darkutils:filter_passenger> : 275,
    <item:darkutils:filter_pet> : 2,
    <item:darkutils:filter_undead> : 10,
    <item:darkutils:filter_water> : 2,
    <item:darkutils:frost_plate> : 1,
    <item:darkutils:slowfall_plate> : 75,
    <item:darkutils:vector_plate> : 125
};

// For each item in the map, check if we're in release mode. If we are, anything below 26 EMC/FMC becomes unburnable for EMC
for item, value in priceTable {
    if (release_mode == true){
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
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Miniscule");
            });
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
}