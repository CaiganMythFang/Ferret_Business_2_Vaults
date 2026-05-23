import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:xercamusic:god> : 0,
    <item:xercamusic:harp_mc> : 0,
    <item:xercamusic:metronome> : 2700,
    <item:xercamusic:redstone_guitar> : 25,
    <item:xercamusic:banjo> : 5,
    <item:xercamusic:bass_guitar> : 25,
    <item:xercamusic:cello> : 5,
    <item:xercamusic:cymbal> : 325,
    <item:xercamusic:drum> : 25,
    <item:xercamusic:drum_kit> : 725,
    <item:xercamusic:flute> : 2,
    <item:xercamusic:french_horn> : 450,
    <item:xercamusic:guitar> : 5,
    <item:xercamusic:lyre> : 5,
    <item:xercamusic:music_box> : 700,
    <item:xercamusic:music_sheet> : 50,
    <item:xercamusic:oboe> : 75,
    <item:xercamusic:piano> : 25,
    <item:xercamusic:sansula> : 75,
    <item:xercamusic:saxophone> : 300,
    <item:xercamusic:tubular_bell> : 150,
    <item:xercamusic:violin> : 5,
    <item:xercamusic:xylophone> : 5
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