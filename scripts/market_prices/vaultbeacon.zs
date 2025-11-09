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
    <item:vaultbeacon:black_haste_catalyst> : 44600,
    <item:vaultbeacon:black_jump_catalyst> : 44650,
    <item:vaultbeacon:black_range_catalyst> : 44650,
    <item:vaultbeacon:black_regen_catalyst> : 44650,
    <item:vaultbeacon:black_resistance_catalyst> : 44650,
    <item:vaultbeacon:black_saturation_catalyst> : 46950,
    <item:vaultbeacon:black_speed_catalyst> : 44575,
    <item:vaultbeacon:black_strength_catalyst> : 44600,
    <item:vaultbeacon:vault_beacon> : 36525,
    <item:vaultbeacon:diamond_haste_catalyst> : 4675,
    <item:vaultbeacon:diamond_jump_catalyst> : 4725,
    <item:vaultbeacon:diamond_range_catalyst> : 4725,
    <item:vaultbeacon:diamond_regen_catalyst> : 4725,
    <item:vaultbeacon:diamond_resistance_catalyst> : 4725,
    <item:vaultbeacon:diamond_saturation_catalyst> : 7025,
    <item:vaultbeacon:diamond_speed_catalyst> : 4650,
    <item:vaultbeacon:diamond_strength_catalyst> : 4675,
    <item:vaultbeacon:iron_haste_catalyst> : 3950,
    <item:vaultbeacon:iron_jump_catalyst> : 4000,
    <item:vaultbeacon:iron_range_catalyst> : 4000,
    <item:vaultbeacon:iron_regen_catalyst> : 4000,
    <item:vaultbeacon:iron_resistance_catalyst> : 4000,
    <item:vaultbeacon:iron_saturation_catalyst> : 6300,
    <item:vaultbeacon:iron_speed_catalyst> : 3925,
    <item:vaultbeacon:iron_strength_catalyst> : 3950,
    <item:vaultbeacon:steel_haste_catalyst> : 5975,
    <item:vaultbeacon:steel_jump_catalyst> : 6025,
    <item:vaultbeacon:steel_range_catalyst> : 6025,
    <item:vaultbeacon:steel_regen_catalyst> : 6025,
    <item:vaultbeacon:steel_resistance_catalyst> : 6025,
    <item:vaultbeacon:steel_saturation_catalyst> : 8325,
    <item:vaultbeacon:steel_speed_catalyst> : 5950,
    <item:vaultbeacon:steel_strength_catalyst> : 5975,
    <item:vaultbeacon:security_key> : 25
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