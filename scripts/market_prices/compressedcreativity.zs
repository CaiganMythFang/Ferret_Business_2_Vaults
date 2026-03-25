import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:compressedcreativity:air_blower> : 1600,
    <item:compressedcreativity:brass_coated_upgrade_matrix> : 75,
    <item:compressedcreativity:brass_gilded_lapis_lazuli> : 125,
    <item:compressedcreativity:compressed_air_engine> : 8500,
    <item:compressedcreativity:engine_rotor> : 8025,
    <item:compressedcreativity:mechanical_visor_upgrade> : 2850,
    <item:compressedcreativity:mesh_dense> : 2425,
    <item:compressedcreativity:mesh_empty> : 1100,
    <item:compressedcreativity:mesh_haunted> : 2200,
    <item:compressedcreativity:mesh_splashing> : 2225,
    <item:compressedcreativity:mesh_splashing_frozen> : 2225,
    <item:compressedcreativity:mesh_woven> : 2225,
    <item:compressedcreativity:rotational_compressor> : 2400,
    <item:compressedcreativity:black_plastic_bracket> : 125,
    <item:compressedcreativity:blue_plastic_bracket> : 125,
    <item:compressedcreativity:brown_plastic_bracket> : 125,
    <item:compressedcreativity:compressed_iron_casing> : 50,
    <item:compressedcreativity:cyan_plastic_bracket> : 125,
    <item:compressedcreativity:gray_plastic_bracket> : 125,
    <item:compressedcreativity:green_plastic_bracket> : 125,
    <item:compressedcreativity:industrial_air_blower> : 475,
    <item:compressedcreativity:light_blue_plastic_bracket> : 125,
    <item:compressedcreativity:light_gray_plastic_bracket> : 125,
    <item:compressedcreativity:lime_plastic_bracket> : 125,
    <item:compressedcreativity:magenta_plastic_bracket> : 125,
    <item:compressedcreativity:orange_plastic_bracket> : 125,
    <item:compressedcreativity:pink_plastic_bracket> : 125,
    <item:compressedcreativity:purple_plastic_bracket> : 125,
    <item:compressedcreativity:red_plastic_bracket> : 125,
    <item:compressedcreativity:white_plastic_bracket> : 125,
    <item:compressedcreativity:yellow_plastic_bracket> : 125
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