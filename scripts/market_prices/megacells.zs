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
    <item:megacells:256m_crafting_storage> : 278225575,
    <item:megacells:cell_component_256m> : 278202800,
    <item:megacells:chemical_storage_cell_256m> : 278221900,
    <item:megacells:fluid_storage_cell_256m> : 278205125,
    <item:megacells:item_storage_cell_256m> : 278205875,
    <item:megacells:portable_chemical_cell_256m> : 278205650,
    <item:megacells:portable_fluid_cell_256m> : 278221375,
    <item:megacells:portable_item_cell_256m> : 278222125,
    <item:megacells:64m_crafting_storage> : 92600900,
    <item:megacells:cell_component_64m> : 92578125,
    <item:megacells:chemical_storage_cell_64m> : 92597225,
    <item:megacells:fluid_storage_cell_64m> : 92580450,
    <item:megacells:item_storage_cell_64m> : 92581200,
    <item:megacells:portable_chemical_cell_64m> : 92580975,
    <item:megacells:portable_fluid_cell_64m> : 92596700,
    <item:megacells:portable_item_cell_64m> : 92597450,
    <item:megacells:16m_crafting_storage> : 30717475,
    <item:megacells:cell_component_16m> : 30694700,
    <item:megacells:chemical_storage_cell_16m> : 30713800,
    <item:megacells:fluid_storage_cell_16m> : 30697025,
    <item:megacells:item_storage_cell_16m> : 30697775,
    <item:megacells:portable_chemical_cell_16m> : 30697550,
    <item:megacells:portable_fluid_cell_16m> : 30713275,
    <item:megacells:portable_item_cell_16m> : 30714025,
    <item:megacells:4m_crafting_storage> : 9875600,
    <item:megacells:cell_component_4m> : 9852825,
    <item:megacells:chemical_storage_cell_4m> : 9871925,
    <item:megacells:fluid_storage_cell_4m> : 9855150,
    <item:megacells:item_storage_cell_4m> : 9855900,
    <item:megacells:portable_chemical_cell_4m> : 9855675,
    <item:megacells:portable_fluid_cell_4m> : 9871400,
    <item:megacells:portable_item_cell_4m> : 9872150,
    <item:megacells:1m_crafting_storage> : 2926175,
    <item:megacells:bulk_cell_component> : 2926250,
    <item:megacells:bulk_item_cell> : 2946650,
    <item:megacells:cell_component_1m> : 2903400,
    <item:megacells:chemical_storage_cell_1m> : 2922500,
    <item:megacells:fluid_storage_cell_1m> : 2905725,
    <item:megacells:item_storage_cell_1m> : 2906475,
    <item:megacells:portable_chemical_cell_1m> : 2906250,
    <item:megacells:portable_fluid_cell_1m> : 2921975,
    <item:megacells:portable_item_cell_1m> : 2922725,
    <item:megacells:mega_energy_cell> : 157825,
    <item:megacells:radioactive_cell_component> : 607675,
    <item:megacells:radioactive_chemical_cell> : 618125,
    <item:megacells:mega_crafting_accelerator> : 25000,
    <item:megacells:mega_crafting_monitor> : 23425,
    <item:megacells:mega_crafting_unit> : 22775,
    <item:megacells:mega_chemical_cell_housing> : 2850,
    <item:megacells:mega_fluid_cell_housing> : 2325,
    <item:megacells:mega_item_cell_housing> : 3075

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