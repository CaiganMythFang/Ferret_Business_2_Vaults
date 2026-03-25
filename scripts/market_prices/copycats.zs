import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:copycats:copycat_beam> : 25,
    <item:copycats:copycat_block> : 125,
    <item:copycats:copycat_board> : 10,
    <item:copycats:copycat_box> : 100,
    <item:copycats:copycat_byte> : 10,
    <item:copycats:copycat_catwalk> : 50,
    <item:copycats:copycat_cogwheel> : 75,
    <item:copycats:copycat_door> : 125,
    <item:copycats:copycat_fence> : 125,
    <item:copycats:copycat_fence_gate> : 125,
    <item:copycats:copycat_fluid_pipe> : 100,
    <item:copycats:copycat_ghost_block> : 125,
    <item:copycats:copycat_half_layer> : 5,
    <item:copycats:copycat_half_panel> : 10,
    <item:copycats:copycat_heavy_weighted_pressure_plate> : 50,
    <item:copycats:copycat_iron_door> : 575,
    <item:copycats:copycat_iron_trapdoor> : 50,
    <item:copycats:copycat_ladder> : 25,
    <item:copycats:copycat_large_cogwheel> : 150,
    <item:copycats:copycat_layer> : 10,
    <item:copycats:copycat_light_weighted_pressure_plate> : 50,
    <item:copycats:copycat_shaft> : 25,
    <item:copycats:copycat_slab> : 50,
    <item:copycats:copycat_slice> : 5,
    <item:copycats:copycat_slope> : 50,
    <item:copycats:copycat_slope_layer> : 10,
    <item:copycats:copycat_stairs> : 125,
    <item:copycats:copycat_stone_button> : 25,
    <item:copycats:copycat_stone_pressure_plate> : 25,
    <item:copycats:copycat_trapdoor> : 25,
    <item:copycats:copycat_vertical_slice> : 5,
    <item:copycats:copycat_vertical_slope> : 50,
    <item:copycats:copycat_vertical_stairs> : 125,
    <item:copycats:copycat_vertical_step> : 25,
    <item:copycats:copycat_wall> : 125,
    <item:copycats:copycat_wooden_button> : 25,
    <item:copycats:copycat_wooden_pressure_plate> : 25
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
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
    }
}