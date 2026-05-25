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
    <item:psi:cad> : 0,
    <item:psi:cad_assembly_creative> : 0,
    <item:psi:cad_assembly_ebony_psimetal> : 70600,
    <item:psi:cad_assembly_ivory_psimetal> : 74125,
    <item:psi:cad_assembly_psimetal> : 46525,
    <item:psi:cad_battery_ultradense> : 9675,
    <item:psi:cad_core_conductive> : 44975,
    <item:psi:ebony_psimetal_block> : 87075,
    <item:psi:ivory_psimetal_block> : 94275,
    <item:psi:psimetal_block> : 87475,
    <item:psi:psimetal_exosuit_boots> : 18875,
    <item:psi:psimetal_exosuit_chestplate> : 56100,
    <item:psi:psimetal_exosuit_helmet> : 28225,
    <item:psi:psimetal_exosuit_leggings> : 45800,
    <item:psi:black_psimetal_plate> : 9275,
    <item:psi:cad_assembler> : 1350,
    <item:psi:cad_assembly_gold> : 37850,
    <item:psi:cad_battery_basic> : 10425,
    <item:psi:cad_battery_extended> : 10175,
    <item:psi:cad_core_hyperclocked> : 18875,
    <item:psi:cad_core_overclocked> : 37225,
    <item:psi:cad_core_radiative> : 26675,
    <item:psi:cad_socket_huge> : 18800,
    <item:psi:cad_socket_large> : 18675,
    <item:psi:cad_socket_signaling> : 26425,
    <item:psi:cad_socket_transmissive> : 26550,
    <item:psi:detonator> : 1325,
    <item:psi:ebony_psimetal> : 9675,
    <item:psi:ebony_substance> : 50,
    <item:psi:exosuit_controller> : 9285,
    <item:psi:exosuit_sensor_heat> : 19025,
    <item:psi:exosuit_sensor_light> : 19000,
    <item:psi:exosuit_sensor_stress> : 19600,
    <item:psi:exosuit_sensor_trigger> : 19000,
    <item:psi:exosuit_sensor_water> : 19025,
    <item:psi:ivory_psimetal> : 10475,
    <item:psi:ivory_substance> : 150,
    <item:psi:lit_black_psimetal_plate> : 9300,
    <item:psi:lit_white_psimetal_plate> : 9775,
    <item:psi:programmer> : 33900,
    <item:psi:psidust> : 875,
    <item:psi:psidust_block> : 7875,
    <item:psi:psigem> : 125,
    <item:psi:psigem_block> : 1125,
    <item:psi:psimetal> : 9275,
    <item:psi:psimetal_axe> : 19150,
    <item:psi:psimetal_pickaxe> : 19150,
    <item:psi:psimetal_shovel> : 9850,
    <item:psi:psimetal_sword> : 9625,
    <item:psi:spell_drive> : 18550,
    <item:psi:vector_ruler> : 1325,
    <item:psi:white_psimetal_plate> : 9775,
    <item:psi:cad_assembly_iron> : 250,
    <item:psi:cad_colorizer_black> : 1100,
    <item:psi:cad_colorizer_blue> : 1100,
    <item:psi:cad_colorizer_brown> : 1100,
    <item:psi:cad_colorizer_cyan> : 1100,
    <item:psi:cad_colorizer_empty> : 1100,
    <item:psi:cad_colorizer_gray> : 1100,
    <item:psi:cad_colorizer_green> : 1100,
    <item:psi:cad_colorizer_light_blue> : 1100,
    <item:psi:cad_colorizer_light_gray> : 1100,
    <item:psi:cad_colorizer_lime> : 1100,
    <item:psi:cad_colorizer_magenta> : 1100,
    <item:psi:cad_colorizer_orange> : 1100,
    <item:psi:cad_colorizer_pink> : 1100,
    <item:psi:cad_colorizer_psi> : 1100,
    <item:psi:cad_colorizer_purple> : 1100,
    <item:psi:cad_colorizer_rainbow> : 1100,
    <item:psi:cad_colorizer_red> : 1100,
    <item:psi:cad_colorizer_white> : 1100,
    <item:psi:cad_colorizer_yellow> : 1100,
    <item:psi:cad_core_basic> : 1075,
    <item:psi:cad_socket_basic> : 1425,
    <item:psi:spell_bullet> : 1100,
    <item:psi:spell_bullet_charge> : 1125,
    <item:psi:spell_bullet_circle> : 1100,
    <item:psi:spell_bullet_grenade> : 1125,
    <item:psi:spell_bullet_loop> : 1100,
    <item:psi:spell_bullet_mine> : 1100,
    <item:psi:spell_bullet_projectile> : 1100
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