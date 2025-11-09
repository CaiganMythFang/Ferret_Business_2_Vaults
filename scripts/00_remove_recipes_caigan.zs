import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.jei.JEI;
import mods.botania.Brew;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import mods.botania.recipe.manager.PetalApothecaryRecipeManager;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import mods.botania.recipe.manager.ManaInfusionRecipeManager;
import mods.botania.recipe.manager.ElvenTradeRecipeManager;
import mods.botania.recipe.manager.RuneAltarRecipeManager;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.recipe.SmithingRecipeManager;
import mods.botania.recipe.manager.BrewRecipeManager;
import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.villagers.VillagerTrades;
import mods.create.MechanicalCrafterManager;

//List of items to ONLY remove the recipes for

var NoCraftList = [
    <item:projecte:condenser_mk1>,
    <item:projecte:condenser_mk2>,
    <item:projecte:transmutation_table>,
    <item:projecte:klein_star_ein>,
    <item:projecte:divining_rod_1>,
    <item:projecte:divining_rod_2>,
    <item:projecte:divining_rod_3>,
    <item:projecte:transmutation_tablet>
];

// Run the list
for item in NoCraftList {
    craftingTable.remove(item);
}

//List of items to remove recipes for AND hide in JEI, sorted by mod
var HideList = [
    <item:projecte:alchemical_chest>,
    <item:projecte:alchemical_coal_block>,
    <item:projecte:mobius_fuel_block>,
    <item:projecte:aeternalis_fuel_block>,
    <item:projecte:collector_mk1>,
    <item:projecte:collector_mk2>,
    <item:projecte:collector_mk3>,
    <item:projecte:dm_pedestal>,
    <item:projecte:dm_furnace>,
    <item:projecte:rm_furnace>,
    <item:projecte:dark_matter_block>,
    <item:projecte:red_matter_block>,
    <item:projecte:interdiction_torch>,
    <item:projecte:nova_catalyst>,
    <item:projecte:nova_cataclysm>,
    <item:projecte:relay_mk1>,
    <item:projecte:relay_mk2>,
    <item:projecte:relay_mk3>,
    <item:projecte:philosophers_stone>,
    <item:projecte:repair_talisman>,
    <item:projecte:white_alchemical_bag>,
    <item:projecte:orange_alchemical_bag>,
    <item:projecte:magenta_alchemical_bag>,
    <item:projecte:light_blue_alchemical_bag>,
    <item:projecte:yellow_alchemical_bag>,
    <item:projecte:lime_alchemical_bag>,
    <item:projecte:pink_alchemical_bag>,
    <item:projecte:gray_alchemical_bag>,
    <item:projecte:light_gray_alchemical_bag>,
    <item:projecte:cyan_alchemical_bag>,
    <item:projecte:purple_alchemical_bag>,
    <item:projecte:blue_alchemical_bag>,
    <item:projecte:brown_alchemical_bag>,
    <item:projecte:green_alchemical_bag>,
    <item:projecte:red_alchemical_bag>,
    <item:projecte:black_alchemical_bag>,
    <item:projecte:alchemical_coal>,
    <item:projecte:mobius_fuel>,
    <item:projecte:aeternalis_fuel>,
    <item:projecte:low_covalence_dust>,
    <item:projecte:medium_covalence_dust>,
    <item:projecte:high_covalence_dust>,
    <item:projecte:dark_matter>,
    <item:projecte:red_matter>,
    <item:projecte:dm_pick>,
    <item:projecte:dm_axe>,
    <item:projecte:dm_shovel>,
    <item:projecte:dm_sword>,
    <item:projecte:dm_hoe>,
    <item:projecte:dm_shears>,
    <item:projecte:dm_hammer>,
    <item:projecte:rm_pick>,
    <item:projecte:rm_axe>,
    <item:projecte:rm_shovel>,
    <item:projecte:rm_sword>,
    <item:projecte:rm_hoe>,
    <item:projecte:rm_shears>,
    <item:projecte:rm_hammer>,
    <item:projecte:rm_katar>,
    <item:projecte:rm_morning_star>,
    <item:projecte:dm_helmet>,
    <item:projecte:dm_chestplate>,
    <item:projecte:dm_leggings>,
    <item:projecte:dm_boots>,
    <item:projecte:rm_helmet>,
    <item:projecte:rm_chestplate>,
    <item:projecte:rm_leggings>,
    <item:projecte:rm_boots>,
    <item:projecte:gem_helmet>,
    <item:projecte:gem_chestplate>,
    <item:projecte:gem_leggings>,
    <item:projecte:gem_boots>,
    <item:projecte:iron_band>,
    <item:projecte:black_hole_band>,
    <item:projecte:archangel_smite>,
    <item:projecte:harvest_goddess_band>,
    <item:projecte:ignition_ring>,
    <item:projecte:zero_ring>,
    <item:projecte:swiftwolf_rending_gale>,
    <item:projecte:watch_of_flowing_time>,
    <item:projecte:evertide_amulet>,
    <item:projecte:volcanite_amulet>,
    <item:projecte:gem_of_eternal_density>,
    <item:projecte:mercurial_eye>,
    <item:projecte:void_ring>,
    <item:projecte:arcana_ring>,
    <item:projecte:body_stone>,
    <item:projecte:soul_stone>,
    <item:projecte:mind_stone>,
    <item:projecte:life_stone>,
    <item:projecte:destruction_catalyst>,
    <item:projecte:hyperkinetic_lens>,
    <item:projecte:catalytic_lens>,
    <item:projecte:tome>,
    <item:projectextended:dark_matter_trident>,
    <item:projectextended:dark_matter_shield>,
    <item:projectextended:red_matter_trident>,
    <item:projectextended:red_matter_shield>,
    <item:projectextended:alchemical_barrel>,
    <item:minestuck:cruxite_apple>,
    <item:minestuck:temple_scanner>,
    <item:minestuck:cruxite_potion>,
    <item:minestuck:sburb_code>,
    <item:minestuck:completed_sburb_code>,
    <item:minestuck:client_disk>,
    <item:minestuck:server_disk>,
    <item:minestuck:black_kings_scepter>,
    <item:minestuck:white_kings_scepter>,
    <item:minestuck:mine_and_grist>,
    <item:minestuck:green_stone_brick_salamander_right>, 
    <item:minestuck:green_stone_brick_salamander_left>, 
    <item:minestuck:green_stone_brick_nak_right>, 
    <item:minestuck:green_stone_brick_nak_left>, 
    <item:minestuck:green_stone_brick_lotus>, 
    <item:minestuck:green_stone_brick_iguana_right>, 
    <item:minestuck:green_stone_brick_iguana_left>, 
    <item:minestuck:green_stone_brick_turtle>, 
    <item:minestuck:green_stone_brick_skaia>
];

// Run the list
for item in HideList {
    craftingTable.remove(item);
    JEI.hideIngredient(item);
}