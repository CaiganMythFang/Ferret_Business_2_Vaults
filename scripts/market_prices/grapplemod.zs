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
    <item:grapplemod:block_grapple_modifier> : 32400,
    <item:grapplemod:limitsupgradeitem> : 19650,
    <item:grapplemod:baseupgradeitem> : 3425,
    <item:grapplemod:doubleupgradeitem> : 5375,
    <item:grapplemod:forcefieldupgradeitem> : 5025,
    <item:grapplemod:grapplinghook> : 975,
    <item:grapplemod:magnetupgradeitem> : 3925,
    <item:grapplemod:motorupgradeitem> : 3650,
    <item:grapplemod:repeller> : 1600,
    <item:grapplemod:rocketupgradeitem> : 3975,
    <item:grapplemod:ropeupgradeitem> : 4025,
    <item:grapplemod:swingupgradeitem> : 6225,
    <item:grapplemod:throwupgradeitem> : 3575,
    <item:grapplemod:launcheritem> : 8650,
    <item:grapplemod:staffupgradeitem> : 12075
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
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
}