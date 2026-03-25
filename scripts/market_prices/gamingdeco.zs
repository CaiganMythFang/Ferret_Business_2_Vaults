import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// Item  to EMC/FMC value map.
val priceTable as int[IItemStack] = {
    <item:gamingdeco:alpha_7_4> : 250,
    <item:gamingdeco:alpha_7_4_ob_medium> : 250,
    <item:gamingdeco:alpha_7_4_ob_small> : 250,
    <item:gamingdeco:asas_gaming_monitor_off> : 250,
    <item:gamingdeco:asas_gaming_monitor_packaging_box> : 250,
    <item:gamingdeco:circuitboard> : 50,
    <item:gamingdeco:console_1> : 500,
    <item:gamingdeco:console_1_light> : 500,
    <item:gamingdeco:console_1_off> : 500,
    <item:gamingdeco:console_1_type_2> : 500,
    <item:gamingdeco:eyetos_packaging_box> : 250,
    <item:gamingdeco:flat_screen_monitor_obs> : 250,
    <item:gamingdeco:flat_screen_monitor_turned_left_obs> : 250,
    <item:gamingdeco:flat_screen_monitor_turned_right_obs> : 250,
    <item:gamingdeco:gaming_monitor_curved_nsi_off> : 250,
    <item:gamingdeco:gaming_pc_1_light_off> : 500,
    <item:gamingdeco:gaming_pc_1_off> : 500,
    <item:gamingdeco:grafikkarte_dark_block> : 250,
    <item:gamingdeco:grafikkarte_light_block> : 250,
    <item:gamingdeco:hex_pt> : 50,
    <item:gamingdeco:keyboard_1> : 250,
    <item:gamingdeco:keyboard_1_light> : 250,
    <item:gamingdeco:keyboard_1_light_off> : 250,
    <item:gamingdeco:keyboard_1_off> : 250,
    <item:gamingdeco:keyboard_pt> : 250,
    <item:gamingdeco:keyboard_pt_light> : 250,
    <item:gamingdeco:keyboard_pt_light_off> : 250,
    <item:gamingdeco:keyboard_pt_off> : 250,
    <item:gamingdeco:mainboard_block_cooler> : 250,
    <item:gamingdeco:mainboard_block_cooler_light> : 250,
    <item:gamingdeco:microphone_eyetos_x> : 250,
    <item:gamingdeco:microphone_eyetos_x_pop> : 250,
    <item:gamingdeco:microphoneyetos> : 250,
    <item:gamingdeco:mmd_gaming_laptop_open_off> : 500,
    <item:gamingdeco:modern_office_monitor> : 250,
    <item:gamingdeco:modern_office_monitor_on> : 250,
    <item:gamingdeco:modern_office_monitor_on_screen_2> : 250,
    <item:gamingdeco:modern_tv> : 250,
    <item:gamingdeco:modern_tv_on> : 250,
    <item:gamingdeco:modern_tv_on_pc_mode> : 250,
    <item:gamingdeco:modern_tv_type_2> : 250,
    <item:gamingdeco:modern_tv_type_2_on> : 250,
    <item:gamingdeco:modern_tv_type_2_on_pc_mode> : 250,
    <item:gamingdeco:ob_medium> : 250,
    <item:gamingdeco:ob_small> : 250,
    <item:gamingdeco:oled_panel> : 50,
    <item:gamingdeco:pc_parts> : 250,
    <item:gamingdeco:pc_parts_light> : 250,
    <item:gamingdeco:plastic_plate> : 50,
    <item:gamingdeco:plastic_plate_dark> : 50,
    <item:gamingdeco:player_y_mic> : 250,
    <item:gamingdeco:playtics_station> : 500,
    <item:gamingdeco:playtics_station_dark> : 500,
    <item:gamingdeco:playtics_station_next_gen> : 500,
    <item:gamingdeco:playtics_station_next_gen_dark> : 500,
    <item:gamingdeco:playtics_station_next_gen_off> : 500,
    <item:gamingdeco:playtics_station_next_gen_off_dark> : 500,
    <item:gamingdeco:playtics_station_next_gen_type_2> : 500,
    <item:gamingdeco:playtics_station_next_gen_type_2_dark> : 500,
    <item:gamingdeco:playtics_station_next_gen_type_2_dark_off> : 500,
    <item:gamingdeco:playtics_station_next_gen_type_2_off> : 500,
    <item:gamingdeco:playtics_station_slim> : 500,
    <item:gamingdeco:playtics_station_slim_dark> : 500,
    <item:gamingdeco:popschutz> : 250,
    <item:gamingdeco:screencomponent> : 50,
    <item:gamingdeco:sensor_board> : 50,
    <item:gamingdeco:softbox_block_off> : 250,
    <item:gamingdeco:softbox_bottom> : 50,
    <item:gamingdeco:softbox_middle> : 50,
    <item:gamingdeco:softbox_off> : 250,
    <item:gamingdeco:softbox_wall_off> : 250,
    <item:gamingdeco:soundbar_left> : 250,
    <item:gamingdeco:soundbar_right> : 250,
    <item:gamingdeco:soundbar_right_cable> : 50,
    <item:gamingdeco:speaker> : 250,
    <item:gamingdeco:webcam> : 250
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