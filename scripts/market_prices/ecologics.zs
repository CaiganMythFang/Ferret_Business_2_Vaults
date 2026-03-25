import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:ecologics:azalea_boat> : 5,
    <item:ecologics:azalea_button> : 1,
    <item:ecologics:azalea_door> : 2,
    <item:ecologics:azalea_fence> : 2,
    <item:ecologics:azalea_fence_gate> : 2,
    <item:ecologics:azalea_flower> : 5,
    <item:ecologics:azalea_log> : 2,
    <item:ecologics:azalea_planks> : 1,
    <item:ecologics:azalea_pressure_plate> : 2,
    <item:ecologics:azalea_slab> : 1,
    <item:ecologics:azalea_stairs> : 1,
    <item:ecologics:azalea_trapdoor> : 2,
    <item:ecologics:azalea_wood> : 1,
    <item:ecologics:coconut> : 5,
    <item:ecologics:coconut_boat> : 5,
    <item:ecologics:coconut_button> : 1,
    <item:ecologics:coconut_door> : 2,
    <item:ecologics:coconut_fence> : 2,
    <item:ecologics:coconut_fence_gate> : 2,
    <item:ecologics:coconut_husk> : 1,
    <item:ecologics:coconut_leaves> : 1,
    <item:ecologics:coconut_log> : 2,
    <item:ecologics:coconut_planks> : 1,
    <item:ecologics:coconut_pressure_plate> : 2,
    <item:ecologics:coconut_seedling> : 5,
    <item:ecologics:coconut_slab> : 1,
    <item:ecologics:coconut_slice> : 1,
    <item:ecologics:coconut_stairs> : 1,
    <item:ecologics:coconut_trapdoor> : 2,
    <item:ecologics:coconut_wood> : 1,
    <item:ecologics:cooked_prickly_pear> : 5,
    <item:ecologics:crab_claw> : 25,
    <item:ecologics:crab_meat> : 25,
    <item:ecologics:flowering_azalea_boat> : 5,
    <item:ecologics:flowering_azalea_door> : 2,
    <item:ecologics:flowering_azalea_fence> : 2,
    <item:ecologics:flowering_azalea_fence_gate> : 2,
    <item:ecologics:flowering_azalea_log> : 2,
    <item:ecologics:flowering_azalea_planks> : 1,
    <item:ecologics:flowering_azalea_slab> : 1,
    <item:ecologics:flowering_azalea_stairs> : 1,
    <item:ecologics:flowering_azalea_trapdoor> : 2,
    <item:ecologics:flowering_azalea_wood> : 1,
    <item:ecologics:ice_brick_slab> : 5,
    <item:ecologics:ice_brick_stairs> : 10,
    <item:ecologics:ice_brick_wall> : 10,
    <item:ecologics:ice_bricks> : 10,
    <item:ecologics:music_disc_coconut> : 25,
    <item:ecologics:penguin_feather> : 25,
    <item:ecologics:prickly_pear> : 5,
    <item:ecologics:sandcastle> : 10,
    <item:ecologics:seashell> : 5,
    <item:ecologics:seashell_block> : 25,
    <item:ecologics:seashell_tile_slab> : 10,
    <item:ecologics:seashell_tile_stairs> : 25,
    <item:ecologics:seashell_tile_wall> : 25,
    <item:ecologics:seashell_tiles> : 25,
    <item:ecologics:snow_brick_slab> : 1,
    <item:ecologics:snow_brick_stairs> : 1,
    <item:ecologics:snow_brick_wall> : 1,
    <item:ecologics:snow_bricks> : 1,
    <item:ecologics:stripped_azalea_log> : 2,
    <item:ecologics:stripped_azalea_wood> : 1,
    <item:ecologics:stripped_coconut_log> : 2,
    <item:ecologics:stripped_coconut_wood> : 1,
    <item:ecologics:stripped_walnut_log> : 2,
    <item:ecologics:stripped_walnut_wood> : 1,
    <item:ecologics:surface_moss> : 1,
    <item:ecologics:tropical_stew> : 50,
    <item:ecologics:walnut> : 5,
    <item:ecologics:walnut_boat> : 5,
    <item:ecologics:walnut_button> : 1,
    <item:ecologics:walnut_door> : 2,
    <item:ecologics:walnut_fence> : 2,
    <item:ecologics:walnut_fence_gate> : 2,
    <item:ecologics:walnut_leaves> : 1,
    <item:ecologics:walnut_log> : 2,
    <item:ecologics:walnut_planks> : 1,
    <item:ecologics:walnut_pressure_plate> : 2,
    <item:ecologics:walnut_sapling> : 5,
    <item:ecologics:walnut_slab> : 1,
    <item:ecologics:walnut_stairs> : 1,
    <item:ecologics:walnut_trapdoor> : 1,
    <item:ecologics:walnut_wood> : 1
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