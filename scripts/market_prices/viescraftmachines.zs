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
    <item:viescraftmachines:admintool_texture_shifter> : 0,
    <item:viescraftmachines:admintool_owner_eraser> : 0,
    <item:viescraftmachines:admintool_max_maintenance> : 0,
    <item:viescraftmachines:kit_service_energy_max> : 0,
    <item:viescraftmachines:tool_name_changer> : 0,
    <item:viescraftmachines:kit_service_energy_small> : 0,
    <item:viescraftmachines:kit_service_durability_max> : 0,
    <item:viescraftmachines:admintool_machine_remover> : 0,
    <item:viescraftmachines:admintool_machine_breaker> : 0,
    <item:viescraftmachines:admintool_complete_machine_sea> : 0,
    <item:viescraftmachines:admintool_complete_machine_hauler> : 0,
    <item:viescraftmachines:admintool_complete_machine_ground> : 0,
    <item:viescraftmachines:circuit_adaptive> : 2025,
    <item:viescraftmachines:circuit_logic> : 1000,
    <item:viescraftmachines:instruction_circuit_flying> : 2125,
    <item:viescraftmachines:instruction_circuit_ground> : 2125,
    <item:viescraftmachines:instruction_circuit_hauler> : 2125,
    <item:viescraftmachines:instruction_circuit_sea> : 2125,
    <item:viescraftmachines:kit_construction_cloth> : 1825,
    <item:viescraftmachines:kit_construction_metal> : 1825,
    <item:viescraftmachines:kit_construction_panel> : 1825,
    <item:viescraftmachines:kit_detailing_cloth> : 4250,
    <item:viescraftmachines:kit_detailing_frame> : 4250,
    <item:viescraftmachines:kit_detailing_metal> : 4250,
    <item:viescraftmachines:kit_detailing_panel> : 4250,
    <item:viescraftmachines:kit_service_durability_large> : 800,
    <item:viescraftmachines:kit_service_energy_large> : 425,
    <item:viescraftmachines:machine_chassis_flying> : 2925,
    <item:viescraftmachines:machine_chassis_ground> : 2925,
    <item:viescraftmachines:machine_chassis_hauler> : 2925,
    <item:viescraftmachines:machine_chassis_sea> : 2925,
    <item:viescraftmachines:machine_workbench> : 9475,
    <item:viescraftmachines:music_disc_bramble> : 25,
    <item:viescraftmachines:music_disc_castle> : 25,
    <item:viescraftmachines:music_disc_dire> : 25,
    <item:viescraftmachines:music_disc_jungle> : 25,
    <item:viescraftmachines:music_disc_storms> : 25,
    <item:viescraftmachines:music_disc_timescar> : 25,
    <item:viescraftmachines:tool_ignition_key> : 1125,
    <item:viescraftmachines:fuel_machine_pellet> : 5,
    <item:viescraftmachines:kit_framework> : 200,
    <item:viescraftmachines:kit_service_durability_small> : 200,
    <item:viescraftmachines:machine_parts> : 100,
    <item:viescraftmachines:machine_parts_mold> : 200,
    <item:viescraftmachines:tool_dismounter> : 275,
    <item:viescraftmachines:tool_dismounter_player> : 600,
    <item:viescraftmachines:tool_machine_wrench> : 325,
    <item:viescraftmachines:xegonite_block> : 100,
    <item:viescraftmachines:xegonite_shard> : 10
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