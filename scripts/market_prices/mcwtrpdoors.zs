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
    <item:mcwtrpdoors:acacia_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:acacia_bark_trapdoor> : 5,
    <item:mcwtrpdoors:acacia_barn_trapdoor> : 5,
    <item:mcwtrpdoors:acacia_barred_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:acacia_beach_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_blossom_trapdoor> : 5,
    <item:mcwtrpdoors:acacia_classic_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_glass_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:acacia_paper_trapdoor> : 5,
    <item:mcwtrpdoors:acacia_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:acacia_swamp_trapdoor> : 2,
    <item:mcwtrpdoors:bamboo_barn_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_barred_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_barrel_trapdoor> : 5,
    <item:mcwtrpdoors:bamboo_beach_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_blossom_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_classic_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_cottage_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_four_panel_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_glass_trapdoor> : 25,
    <item:mcwtrpdoors:bamboo_mystic_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_paper_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_swamp_trapdoor> : 50,
    <item:mcwtrpdoors:bamboo_trapdoor> : 25,
    <item:mcwtrpdoors:bamboo_tropical_trapdoor> : 50,
    <item:mcwtrpdoors:birch_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:birch_bark_trapdoor> : 5,
    <item:mcwtrpdoors:birch_barn_trapdoor> : 5,
    <item:mcwtrpdoors:birch_barred_trapdoor> : 2,
    <item:mcwtrpdoors:birch_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:birch_beach_trapdoor> : 2,
    <item:mcwtrpdoors:birch_blossom_trapdoor> : 5,
    <item:mcwtrpdoors:birch_classic_trapdoor> : 2,
    <item:mcwtrpdoors:birch_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:birch_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:birch_glass_trapdoor> : 2,
    <item:mcwtrpdoors:birch_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:birch_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:birch_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:birch_tropical_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:crimson_bark_trapdoor> : 5,
    <item:mcwtrpdoors:crimson_barn_trapdoor> : 5,
    <item:mcwtrpdoors:crimson_barrel_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_beach_trapdoor> : 1,
    <item:mcwtrpdoors:crimson_blossom_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_classic_trapdoor> : 5,
    <item:mcwtrpdoors:crimson_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_glass_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_paper_trapdoor> : 2,
    <item:mcwtrpdoors:crimson_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:crimson_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:crimson_tropical_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:dark_oak_bark_trapdoor> : 5,
    <item:mcwtrpdoors:dark_oak_barn_trapdoor> : 5,
    <item:mcwtrpdoors:dark_oak_barred_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:dark_oak_beach_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_blossom_trapdoor> : 5,
    <item:mcwtrpdoors:dark_oak_classic_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_glass_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_paper_trapdoor> : 2,
    <item:mcwtrpdoors:dark_oak_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:dark_oak_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:dark_oak_tropical_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:jungle_bark_trapdoor> : 5,
    <item:mcwtrpdoors:jungle_barn_trapdoor> : 5,
    <item:mcwtrpdoors:jungle_barred_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:jungle_blossom_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_classic_trapdoor> : 5,
    <item:mcwtrpdoors:jungle_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_glass_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_paper_trapdoor> : 2,
    <item:mcwtrpdoors:jungle_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:jungle_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:jungle_tropical_trapdoor> : 2,
    <item:mcwtrpdoors:metal_full_trapdoor> : 675,
    <item:mcwtrpdoors:metal_trapdoor> : 450,
    <item:mcwtrpdoors:metal_warning_trapdoor> : 900,
    <item:mcwtrpdoors:oak_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:oak_bark_trapdoor> : 5,
    <item:mcwtrpdoors:oak_barn_trapdoor> : 5,
    <item:mcwtrpdoors:oak_barred_trapdoor> : 2,
    <item:mcwtrpdoors:oak_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:oak_beach_trapdoor> : 2,
    <item:mcwtrpdoors:oak_blossom_trapdoor> : 5,
    <item:mcwtrpdoors:oak_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:oak_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:oak_glass_trapdoor> : 2,
    <item:mcwtrpdoors:oak_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:oak_paper_trapdoor> : 2,
    <item:mcwtrpdoors:oak_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:oak_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:oak_tropical_trapdoor> : 2,
    <item:mcwtrpdoors:print_bamboo> : 5,
    <item:mcwtrpdoors:print_barred> : 1,
    <item:mcwtrpdoors:print_beach> : 1,
    <item:mcwtrpdoors:print_blossom> : 1,
    <item:mcwtrpdoors:print_classic> : 1,
    <item:mcwtrpdoors:print_cottage> : 1,
    <item:mcwtrpdoors:print_four_panel> : 1,
    <item:mcwtrpdoors:print_mystic> : 1,
    <item:mcwtrpdoors:print_paper> : 1,
    <item:mcwtrpdoors:print_swamp> : 2,
    <item:mcwtrpdoors:print_tropical> : 1,
    <item:mcwtrpdoors:spruce_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:spruce_bark_trapdoor> : 5,
    <item:mcwtrpdoors:spruce_barn_trapdoor> : 5,
    <item:mcwtrpdoors:spruce_barred_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:spruce_beach_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_blossom_trapdoor> : 5,
    <item:mcwtrpdoors:spruce_classic_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_glass_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_mystic_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_paper_trapdoor> : 2,
    <item:mcwtrpdoors:spruce_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:spruce_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:spruce_tropical_trapdoor> : 2,
    <item:mcwtrpdoors:warped_bamboo_trapdoor> : 5,
    <item:mcwtrpdoors:warped_bark_trapdoor> : 5,
    <item:mcwtrpdoors:warped_barn_trapdoor> : 5,
    <item:mcwtrpdoors:warped_barred_trapdoor> : 2,
    <item:mcwtrpdoors:warped_barrel_trapdoor> : 1,
    <item:mcwtrpdoors:warped_beach_trapdoor> : 2,
    <item:mcwtrpdoors:warped_blossom_trapdoor> : 5,
    <item:mcwtrpdoors:warped_classic_trapdoor> : 2,
    <item:mcwtrpdoors:warped_cottage_trapdoor> : 2,
    <item:mcwtrpdoors:warped_four_panel_trapdoor> : 2,
    <item:mcwtrpdoors:warped_glass_trapdoor> : 2,
    <item:mcwtrpdoors:warped_paper_trapdoor> : 2,
    <item:mcwtrpdoors:warped_ranch_trapdoor> : 5,
    <item:mcwtrpdoors:warped_swamp_trapdoor> : 5,
    <item:mcwtrpdoors:warped_tropical_trapdoor> : 2
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