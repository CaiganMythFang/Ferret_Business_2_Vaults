import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:createaddition:creative_energy> : 3349550,
    <item:createaddition:electric_motor> : 19350,
    <item:createaddition:alternator> : 10900,
    <item:createaddition:barbed_wire> : 200,
    <item:createaddition:bioethanol_bucket> : 1200,
    <item:createaddition:brass_rod> : 50,
    <item:createaddition:connector> : 100,
    <item:createaddition:diamond_grit> : 1800,
    <item:createaddition:diamond_grit_sandpaper> : 1800,
    <item:createaddition:digital_adapter> : 11300,
    <item:createaddition:electrum_ingot> : 450,
    <item:createaddition:electrum_nugget> : 50,
    <item:createaddition:electrum_rod> : 225,
    <item:createaddition:electrum_sheet> : 450,
    <item:createaddition:electrum_spool> : 925,
    <item:createaddition:electrum_wire> : 225,
    <item:createaddition:festive_spool> : 250,
    <item:createaddition:gold_rod> : 325,
    <item:createaddition:gold_spool> : 1325,
    <item:createaddition:gold_wire> : 325,
    <item:createaddition:large_connector> : 150,
    <item:createaddition:portable_energy_interface> : 1775,
    <item:createaddition:redstone_relay> : 400,
    <item:createaddition:tesla_coil> : 7525,
    <item:createaddition:biomass> : 5,
    <item:createaddition:biomass_pellet> : 5,
    <item:createaddition:cake_base> : 50,
    <item:createaddition:cake_base_baked> : 50,
    <item:createaddition:capacitor> : 350,
    <item:createaddition:chocolate_cake> : 50,
    <item:createaddition:copper_rod> : 50,
    <item:createaddition:copper_spool> : 225,
    <item:createaddition:copper_wire> : 50,
    <item:createaddition:honey_cake> : 100,
    <item:createaddition:iron_rod> : 100,
    <item:createaddition:iron_wire> : 100,
    <item:createaddition:modular_accumulator> : 500,
    <item:createaddition:rolling_mill> : 1125,
    <item:createaddition:seed_oil_bucket> : 725,
    <item:createaddition:spool> : 25,
    <item:createaddition:straw> : 5,
    <item:createaddition:zinc_sheet> : 125
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