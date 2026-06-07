import crafttweaker.api.text.TextComponent;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:draconicevolution:draconium_chest> : 0,
    <item:draconicevolution:dislocation_inhibitor> : 0,
    <item:draconicevolution:celestial_manipulator> : 0,
    <item:draconicevolution:draconium_nugget> : 200,
    <item:draconicevolution:rain_sensor> : 700,
    <item:draconicevolution:draconium_dust> : 1750,
    <item:draconicevolution:draconium_ingot> : 1750,
    <item:draconicevolution:potentiometer> : 1775,
    <item:draconicevolution:infused_obsidian> : 1825,
    <item:draconicevolution:deepslate_draconium_ore> : 3500,
    <item:draconicevolution:end_draconium_ore> : 3500,
    <item:draconicevolution:nether_draconium_ore> : 3500,
    <item:draconicevolution:overworld_draconium_ore> : 3500,
    <item:draconicevolution:draconium_block> : 15725,
    <item:draconicevolution:module_core> : 22100,
    <item:draconicevolution:draconium_energy_module> : 23150,
    <item:draconicevolution:small_chaos_frag> : 29300,
    <item:draconicevolution:energy_pylon> : 34175,
    <item:draconicevolution:draconium_core> : 56825,
    <item:draconicevolution:entity_detector> : 59925,
    <item:draconicevolution:crystal_binder> : 62150,
    <item:draconicevolution:reactor_prt_out_rotor> : 65725,
    <item:draconicevolution:entity_detector_advanced> : 65800,
    <item:draconicevolution:particle_generator> : 77450,
    <item:draconicevolution:energy_core_stabilizer> : 78750,
    <item:draconicevolution:wyvern_energy_module> : 113650,
    <item:draconicevolution:wyvern_night_vision_module> : 142750,
    <item:draconicevolution:wyvern_proj_velocity_module> : 142775,
    <item:draconicevolution:wyvern_proj_accuracy_module> : 142825,
    <item:draconicevolution:wyvern_proj_penetration_module> : 142975,
    <item:draconicevolution:wyvern_auto_fire_module> : 145450,
    <item:draconicevolution:wyvern_tree_harvest_module> : 153550,
    <item:draconicevolution:basic_io_crystal> : 169875,
    <item:draconicevolution:energy_transfuser> : 260025,
    <item:draconicevolution:medium_chaos_frag> : 263700,
    <item:draconicevolution:basic_relay_crystal> : 339750,
    <item:draconicevolution:wyvern_io_crystal> : 773025,
    <item:draconicevolution:basic_wireless_crystal> : 496350,
    <item:draconicevolution:disenchanter> : 507300,
    <item:draconicevolution:draconic_io_crystal> : 1084175,
    <item:draconicevolution:wyvern_relay_crystal> : 773025,
    <item:draconicevolution:wyvern_wireless_crystal> : 929675,
    <item:draconicevolution:wyvern_energy_core> : 975950,
    <item:draconicevolution:grinder> : 1009675,
    <item:draconicevolution:draconic_relay_crystal> : 2168375, 
    <item:draconicevolution:draconic_wireless_crystal> : 1505650,
    <item:draconicevolution:wyvern_core> : 1670250,
    <item:draconicevolution:wyvern_axe> : 1717495,
    <item:draconicevolution:wyvern_bow> : 1717495,
    <item:draconicevolution:wyvern_pickaxe> : 1717495,
    <item:draconicevolution:wyvern_shovel> : 1717495,
    <item:draconicevolution:large_chaos_frag> : 2373300,
    <item:draconicevolution:awakened_draconium_nugget> : 1550,
    <item:draconicevolution:wyvern_energy_link_module> : 2693150,
    <item:draconicevolution:crafting_core> : 3241650,
    <item:draconicevolution:basic_crafting_injector> : 3594325,
    <item:draconicevolution:energy_core> : 3632650,
    <item:draconicevolution:wyvern_crafting_injector> : 5401150,
    <item:draconicevolution:wyvern_capacitor> : 5580730,
    <item:draconicevolution:draconic_energy_module> : 4909950,
    <item:draconicevolution:draconic_proj_velocity_module> : 1965100,
    <item:draconicevolution:draconic_proj_accuracy_module> : 1965200,
    <item:draconicevolution:draconic_proj_penetration_module> : 1965500,
    <item:draconicevolution:chaos_shard> : 21359700,
    <item:draconicevolution:awakened_core> : 300475, // -25608138
    <item:draconicevolution:awakened_crafting_injector> : 8874875, // -43102743
    <item:draconicevolution:chaotic_energy_module> : 11702575, // -48402325
    <item:draconicevolution:chaotic_proj_accuracy_module> : 5813075, // -54408725
    <item:draconicevolution:chaotic_proj_penetration_module> : 5813675, // -54408725
    <item:draconicevolution:chaotic_crafting_injector> : 18397275, // -43102743
    <item:draconicevolution:reactor_prt_in_rotor> : 102350, // -64801125
    <item:draconicevolution:draconic_tree_harvest_module> : 1948850,
    <item:draconicevolution:draconic_energy_core> : 5630100, // -86401175
    <item:draconicevolution:reactor_core> : 7181150, // -86401536
    <item:draconicevolution:draconic_energy_link_module> : 4909950,
    <item:draconicevolution:chaotic_tree_harvest_module> : 7076975, // -112009525
    <item:draconicevolution:reactor_prt_rotor_full> : 2009900, // -127592350
    <item:draconicevolution:draconic_axe> : 9070050, // -129601929
    <item:draconicevolution:draconic_bow> : 9070050,
    // <item:draconicevolution:draconic_pickaxe> : 138671979,
    <item:draconicevolution:draconic_shovel> : 9070036, // -129601943
    <item:draconicevolution:draconic_hoe> : 9072000,
    <item:draconicevolution:chaotic_core> : 13124400, // -188834088,
    <item:draconicevolution:reactor_injector> : 2087100, // -259204508
    <item:draconicevolution:chaotic_energy_link_module> : 21070725, // -300530050
    <item:draconicevolution:draconic_capacitor> : 22827825, // -371212852
    <item:draconicevolution:chaotic_energy_core> : 23875675, // -371212800
    <item:draconicevolution:reactor_prt_focus_ring> : 23875675, // -371249200
    <item:draconicevolution:reactor_prt_stab_frame> : 23930950,
    <item:draconicevolution:chaotic_proj_velocity_module> : 5812875, // -596402725
    <item:draconicevolution:chaotic_hoe> : 46156075,
    <item:draconicevolution:chaotic_axe> : 46154125, // -819251123
    <item:draconicevolution:chaotic_bow> : 46154125, // -819251123
    // <item:draconicevolution:chaotic_pickaxe> : 865405248,
    <item:draconicevolution:chaotic_shovel> : 46154113, // -819251135
    // <item:draconicevolution:creative_capacitor> : 1867722132,
    <item:draconicevolution:reactor_stabilizer> : 463478867, // -862808915
    <item:draconicevolution:awakened_draconium_dust> : 14000,
    <item:draconicevolution:awakened_draconium_ingot> : 14000, // -21600384
    <item:draconicevolution:dragon_heart> : 21500,
    <item:draconicevolution:awakened_draconium_block> : 126025
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
            item.addTooltip(new TextComponent("FOP Digitization Value: Miniscule").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Small").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Medium").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Large").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
    } else {
        CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
        <tag:items:projectextended:blacklist_condenser>.add(item);
        <tag:items:projectextended:blacklist_learning>.add(item);
        
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Small").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Medium").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.addTooltip(new TextComponent("FOP Digitization Value: Large").withStyle(style => style.withColor(<constant:minecraft:formatting:white>)));
        }
    }
}