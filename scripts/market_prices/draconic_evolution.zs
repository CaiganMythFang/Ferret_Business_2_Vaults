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
    <item:draconicevolution:particle_generator> : 77425,
    <item:draconicevolution:energy_core_stabilizer> : 78725,
    <item:draconicevolution:wyvern_energy_module> : 113600,
    <item:draconicevolution:wyvern_night_vision_module> : 142750,
    <item:draconicevolution:wyvern_proj_velocity_module> : 142775,
    <item:draconicevolution:wyvern_proj_accuracy_module> : 142825,
    <item:draconicevolution:wyvern_proj_penetration_module> : 142975,
    <item:draconicevolution:wyvern_auto_fire_module> : 145450,
    <item:draconicevolution:wyvern_tree_harvest_module> : 153550,
    <item:draconicevolution:basic_io_crystal> : 169875,
    <item:draconicevolution:energy_transfuser> : 259925,
    <item:draconicevolution:medium_chaos_frag> : 263700,
    <item:draconicevolution:basic_relay_crystal> : 339750,
    <item:draconicevolution:wyvern_io_crystal> : 386525,
    <item:draconicevolution:basic_wireless_crystal> : 496350,
    <item:draconicevolution:disenchanter> : 507280,
    <item:draconicevolution:draconic_io_crystal> : 596200,
    <item:draconicevolution:wyvern_relay_crystal> : 773025,
    <item:draconicevolution:wyvern_wireless_crystal> : 929625,
    <item:draconicevolution:wyvern_energy_core> : 975870,
    <item:draconicevolution:grinder> : 1009675,
    <item:draconicevolution:draconic_relay_crystal> : 1192400,
    <item:draconicevolution:draconic_wireless_crystal> : 1349000,
    <item:draconicevolution:wyvern_core> : 1670250,
    <item:draconicevolution:wyvern_axe> : 1717495,
    <item:draconicevolution:wyvern_bow> : 1717495,
    <item:draconicevolution:wyvern_pickaxe> : 1717495,
    <item:draconicevolution:wyvern_shovel> : 1717495,
    <item:draconicevolution:large_chaos_frag> : 2373300,
    <item:draconicevolution:awakened_draconium_nugget> : 2401598,
    <item:draconicevolution:wyvern_energy_link_module> : 2692925,
    <item:draconicevolution:crafting_core> : 3241650,
    <item:draconicevolution:basic_crafting_injector> : 3594325,
    <item:draconicevolution:energy_core> : 3632500,
    <item:draconicevolution:wyvern_crafting_injector> : 5401150,
    <item:draconicevolution:wyvern_capacitor> : 5580730,
    <item:draconicevolution:draconic_energy_module> : 16307050,
    <item:draconicevolution:draconic_proj_velocity_module> : 16365400,
    <item:draconicevolution:draconic_proj_accuracy_module> : 16365500,
    <item:draconicevolution:draconic_proj_penetration_module> : 16365800,
    <item:draconicevolution:chaos_shard> : 21359700,
    <item:draconicevolution:awakened_draconium_dust> : 21614384,
    <item:draconicevolution:awakened_draconium_ingot> : 21614384,
    <item:draconicevolution:awakened_core> : 25908613,
    <item:draconicevolution:awakened_draconium_block> : 43228768,
    <item:draconicevolution:awakened_crafting_injector> : 51977618,
    <item:draconicevolution:chaotic_energy_module> : 60104900,
    <item:draconicevolution:chaotic_proj_accuracy_module> : 60221800,
    <item:draconicevolution:chaotic_proj_penetration_module> : 60222400,
    <item:draconicevolution:chaotic_crafting_injector> : 61500018,
    <item:draconicevolution:reactor_prt_in_rotor> : 64903475,
    <item:draconicevolution:draconic_tree_harvest_module> : 88350250,
    <item:draconicevolution:draconic_energy_core> : 92031275,
    <item:draconicevolution:reactor_core> : 93582686,
    <item:draconicevolution:draconic_energy_link_module> : 116919200,
    <item:draconicevolution:chaotic_tree_harvest_module> : 119086500,
    <item:draconicevolution:reactor_prt_rotor_full> : 131612150,
    <item:draconicevolution:draconic_axe> : 138671979,
    <item:draconicevolution:draconic_pickaxe> : 138671979,
    <item:draconicevolution:draconic_shovel> : 138671979,
    <item:draconicevolution:chaotic_core> : 201958488,
    <item:draconicevolution:reactor_injector> : 261291608,
    <item:draconicevolution:chaotic_energy_link_module> : 321600775,
    <item:draconicevolution:draconic_capacitor> : 394040677,
    <item:draconicevolution:chaotic_energy_core> : 395088475,
    <item:draconicevolution:reactor_prt_focus_ring> : 395124875,
    <item:draconicevolution:reactor_prt_stab_frame> : 438344550,
    <item:draconicevolution:chaotic_proj_velocity_module> : 602215600,
    <item:draconicevolution:chaotic_axe> : 865405248,
    <item:draconicevolution:chaotic_bow> : 865405248,
    <item:draconicevolution:chaotic_pickaxe> : 865405248,
    <item:draconicevolution:chaotic_shovel> : 865405248,
    <item:draconicevolution:reactor_stabilizer> : 1326287782,
    <item:draconicevolution:dragon_heart> : 1725479850,
    <item:draconicevolution:creative_capacitor> : 1867722132
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