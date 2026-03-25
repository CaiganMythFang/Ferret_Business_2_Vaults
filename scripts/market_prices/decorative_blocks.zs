import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:decorative_blocks:soul_brazier> : 250,
    <item:decorative_blocks:soul_chandelier> : 50,
    <item:decorative_blocks:acacia_beam> : 2,
    <item:decorative_blocks:acacia_palisade> : 1,
    <item:decorative_blocks:acacia_seat> : 1,
    <item:decorative_blocks:acacia_support> : 1,
    <item:decorative_blocks:bar_panel> : 75,
    <item:decorative_blocks:birch_beam> : 2,
    <item:decorative_blocks:birch_palisade> : 1,
    <item:decorative_blocks:birch_seat> : 1,
    <item:decorative_blocks:birch_support> : 1,
    <item:decorative_blocks:brazier> : 225,
    <item:decorative_blocks:chain> : 150,
    <item:decorative_blocks:chandelier> : 5,
    <item:decorative_blocks:crimson_beam> : 2,
    <item:decorative_blocks:crimson_palisade> : 1,
    <item:decorative_blocks:crimson_seat> : 1,
    <item:decorative_blocks:crimson_support> : 1,
    <item:decorative_blocks:dark_oak_beam> : 2,
    <item:decorative_blocks:dark_oak_palisade> : 1,
    <item:decorative_blocks:dark_oak_seat> : 1,
    <item:decorative_blocks:dark_oak_support> : 1,
    <item:decorative_blocks:jungle_beam> : 2,
    <item:decorative_blocks:jungle_palisade> : 1,
    <item:decorative_blocks:jungle_seat> : 1,
    <item:decorative_blocks:jungle_support> : 1,
    <item:decorative_blocks:lattice> : 5,
    <item:decorative_blocks:oak_beam> : 2,
    <item:decorative_blocks:oak_palisade> : 1,
    <item:decorative_blocks:oak_seat> : 1,
    <item:decorative_blocks:oak_support> : 1,
    <item:decorative_blocks:rocky_dirt> : 5,
    <item:decorative_blocks:spruce_beam> : 2,
    <item:decorative_blocks:spruce_palisade> : 1,
    <item:decorative_blocks:spruce_seat> : 1,
    <item:decorative_blocks:spruce_support> : 1,
    <item:decorative_blocks:stone_pillar> : 1,
    <item:decorative_blocks:warped_beam> : 2,
    <item:decorative_blocks:warped_palisade> : 1,
    <item:decorative_blocks:warped_seat> : 1,
    <item:decorative_blocks:warped_support> : 1
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