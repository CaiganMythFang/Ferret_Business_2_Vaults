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
    <item:comforts:hammock_black> : 25,
    <item:comforts:hammock_blue> : 25,
    <item:comforts:hammock_brown> : 25,
    <item:comforts:hammock_cyan> : 25,
    <item:comforts:hammock_gray> : 25,
    <item:comforts:hammock_green> : 25,
    <item:comforts:hammock_light_blue> : 25,
    <item:comforts:hammock_light_gray> : 25,
    <item:comforts:hammock_lime> : 25,
    <item:comforts:hammock_magenta> : 25,
    <item:comforts:hammock_orange> : 25,
    <item:comforts:hammock_pink> : 25,
    <item:comforts:hammock_purple> : 25,
    <item:comforts:hammock_red> : 25,
    <item:comforts:hammock_white> : 25,
    <item:comforts:hammock_yellow> : 25,
    <item:comforts:rope_and_nail> : 125,
    <item:comforts:sleeping_bag_black> : 25,
    <item:comforts:sleeping_bag_blue> : 25,
    <item:comforts:sleeping_bag_brown> : 25,
    <item:comforts:sleeping_bag_cyan> : 25,
    <item:comforts:sleeping_bag_gray> : 25,
    <item:comforts:sleeping_bag_green> : 25,
    <item:comforts:sleeping_bag_light_blue> : 25,
    <item:comforts:sleeping_bag_light_gray> : 25,
    <item:comforts:sleeping_bag_lime> : 25,
    <item:comforts:sleeping_bag_magenta> : 25,
    <item:comforts:sleeping_bag_orange> : 25,
    <item:comforts:sleeping_bag_pink> : 25,
    <item:comforts:sleeping_bag_purple> : 25,
    <item:comforts:sleeping_bag_red> : 25,
    <item:comforts:sleeping_bag_white> : 25,
    <item:comforts:sleeping_bag_yellow> : 25
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