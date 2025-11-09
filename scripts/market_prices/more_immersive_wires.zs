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
    <item:more_immersive_wires:ae_coil> : 125,
    <item:more_immersive_wires:ae_connector> : 50,
    <item:more_immersive_wires:ae_dense_coil> : 125,
    <item:more_immersive_wires:ae_dense_connector> : 125,
    <item:more_immersive_wires:ae_dense_relay> : 50,
    <item:more_immersive_wires:ae_relay> : 10,
    <item:more_immersive_wires:cc_coil> : 75,
    <item:more_immersive_wires:cc_connector> : 5,
    <item:more_immersive_wires:cc_modem> : 11200,
    <item:more_immersive_wires:cc_relay> : 2,
    <item:more_immersive_wires:id_coil> : 225,
    <item:more_immersive_wires:id_connector> : 50,
    <item:more_immersive_wires:id_relay> : 1
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