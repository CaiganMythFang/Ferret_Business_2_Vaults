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
    <item:experienceobelisk:cognitive_alloy_block> : 112275,
    <item:experienceobelisk:cognitive_crystal_block> : 110925,
    <item:experienceobelisk:precision_dispeller> : 110925,
    <item:experienceobelisk:astute_assembly> : 30875,
    <item:experienceobelisk:attunement_staff> : 40325,
    <item:experienceobelisk:experience_fountain> : 80800,
    <item:experienceobelisk:experience_obelisk> : 71200,
    <item:experienceobelisk:cognitium_bucket> : 2350,
    <item:experienceobelisk:cognitive_alloy> : 12475,
    <item:experienceobelisk:cognitive_amalgam> : 3050,
    <item:experienceobelisk:cognitive_axe> : 13175,
    <item:experienceobelisk:cognitive_crystal> : 12325,
    <item:experienceobelisk:cognitive_flux> : 3050,
    <item:experienceobelisk:cognitive_hoe> : 12950,
    <item:experienceobelisk:cognitive_pickaxe> : 13175,
    <item:experienceobelisk:cognitive_shovel> : 12725,
    <item:experienceobelisk:cognitive_sword> : 12950,
    <item:experienceobelisk:enlightened_amulet> : 12325
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