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
    <item:integrateddynamics:energy_battery_creative> : 1470000,
    <item:integrateddynamics:part_connector_omni_directional> : 18575,
    <item:integrateddynamics:bucket_liquid_chorus> : 725,
    <item:integrateddynamics:cable> : 150,
    <item:integrateddynamics:coal_generator> : 1775,
    <item:integrateddynamics:crystalized_chorus_block> : 100,
    <item:integrateddynamics:crystalized_chorus_block_slab> : 50,
    <item:integrateddynamics:crystalized_chorus_block_stairs> : 125,
    <item:integrateddynamics:crystalized_chorus_brick> : 100,
    <item:integrateddynamics:crystalized_chorus_brick_slab> : 50,
    <item:integrateddynamics:crystalized_chorus_brick_stairs> : 125,
    <item:integrateddynamics:crystalized_chorus_chunk> : 10,
    <item:integrateddynamics:delay> : 6425,
    <item:integrateddynamics:drying_basin> : 1850,
    <item:integrateddynamics:energy_battery> : 6075,
    <item:integrateddynamics:logic_director> : 15775,
    <item:integrateddynamics:logic_programmer> : 5400,
    <item:integrateddynamics:materializer> : 50,
    <item:integrateddynamics:mechanical_drying_basin> : 17825,
    <item:integrateddynamics:mechanical_squeezer> : 17575,
    <item:integrateddynamics:part_audio_reader> : 4875,
    <item:integrateddynamics:part_audio_writer> : 4475,
    <item:integrateddynamics:part_block_reader> : 4475,
    <item:integrateddynamics:part_connector_mono_directional> : 2825,
    <item:integrateddynamics:part_display_panel> : 10225,
    <item:integrateddynamics:part_dynamic_light_panel> : 4625,
    <item:integrateddynamics:part_effect_writer> : 4550,
    <item:integrateddynamics:part_entity_reader> : 4550,
    <item:integrateddynamics:part_entity_writer> : 4550,
    <item:integrateddynamics:part_extradimensional_reader> : 7750,
    <item:integrateddynamics:part_fluid_reader> : 5200,
    <item:integrateddynamics:part_inventory_reader> : 4450,
    <item:integrateddynamics:part_inventory_writer> : 4450,
    <item:integrateddynamics:part_machine_reader> : 4550,
    <item:integrateddynamics:part_machine_writer> : 4550,
    <item:integrateddynamics:part_network_reader> : 5300,
    <item:integrateddynamics:part_redstone_reader> : 4850,
    <item:integrateddynamics:part_redstone_writer> : 4650,
    <item:integrateddynamics:part_static_light_panel> : 4600,
    <item:integrateddynamics:part_world_reader> : 4550,
    <item:integrateddynamics:portable_logic_programmer> : 5400,
    <item:integrateddynamics:proto_chorus> : 50,
    <item:integrateddynamics:proxy> : 1025,
    <item:integrateddynamics:squeezer> : 1625,
    <item:integrateddynamics:variable_transformer_input> : 950,
    <item:integrateddynamics:variable_transformer_output> : 950,
    <item:integrateddynamics:variablestore> : 950,
    <item:integrateddynamics:bucket_menril_resin> : 675,
    <item:integrateddynamics:crystalized_menril_block> : 10,
    <item:integrateddynamics:crystalized_menril_block_slab> : 5,
    <item:integrateddynamics:crystalized_menril_block_stairs> : 10,
    <item:integrateddynamics:crystalized_menril_brick> : 5,
    <item:integrateddynamics:crystalized_menril_brick_slab> : 5,
    <item:integrateddynamics:crystalized_menril_brick_stairs> : 10,
    <item:integrateddynamics:crystalized_menril_chunk> : 1,
    <item:integrateddynamics:facade> : 2,
    <item:integrateddynamics:labeller> : 25,
    <item:integrateddynamics:menril_berries> : 5,
    <item:integrateddynamics:menril_door> : 2,
    <item:integrateddynamics:menril_fence> : 1,
    <item:integrateddynamics:menril_fence_gate> : 5,
    <item:integrateddynamics:menril_leaves> : 1,
    <item:integrateddynamics:menril_log> : 2,
    <item:integrateddynamics:menril_log_filled> : 1,
    <item:integrateddynamics:menril_log_stripped> : 2,
    <item:integrateddynamics:menril_planks> : 1,
    <item:integrateddynamics:menril_planks_stairs> : 1,
    <item:integrateddynamics:menril_sapling> : 5,
    <item:integrateddynamics:menril_slab> : 1,
    <item:integrateddynamics:menril_torch> : 1,
    <item:integrateddynamics:menril_torch_stone> : 1,
    <item:integrateddynamics:menril_wood> : 2,
    <item:integrateddynamics:menril_wood_stripped> : 2,
    <item:integrateddynamics:on_the_dynamics_of_integration> : 10,
    <item:integrateddynamics:variable> : 10,
    <item:integrateddynamics:wrench> : 325
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