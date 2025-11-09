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
    <item:mahoutsukai:scroll_death_collection> : 1675,
    <item:mahoutsukai:mahoujin_projector> : 29925,
    <item:mahoutsukai:scroll_butterfly_effect> : 1250,
    <item:mahoutsukai:scroll_cup_of_heaven> : 5450,
    <item:mahoutsukai:scroll_mystic_staff> : 5150,
    <item:mahoutsukai:scroll_reality_marble> : 825,
    <item:mahoutsukai:attuned_diamond> : 13175,
    <item:mahoutsukai:attuned_emerald> : 4500,
    <item:mahoutsukai:attuner> : 4175,
    <item:mahoutsukai:dagger> : 6225,
    <item:mahoutsukai:fog_projector> : 9300,
    <item:mahoutsukai:mana_circuit> : 375,
    <item:mahoutsukai:mana_circuit_magitech> : 2175,
    <item:mahoutsukai:mystic_code> : 16000,
    <item:mahoutsukai:mystic_code_first_sorcery> : 2275,
    <item:mahoutsukai:powdered_emerald> : 175,
    <item:mahoutsukai:powdered_ender> : 450,
    <item:mahoutsukai:powdered_eye> : 600,
    <item:mahoutsukai:powdered_gold> : 2375,
    <item:mahoutsukai:powdered_quartz> : 350,
    <item:mahoutsukai:scroll_ascension> : 3625,
    <item:mahoutsukai:scroll_black_flame> : 1600,
    <item:mahoutsukai:scroll_borrowed_authority> : 7450,
    <item:mahoutsukai:scroll_boundary_displacement> : 1075,
    <item:mahoutsukai:scroll_boundary_drain_life> : 800,
    <item:mahoutsukai:scroll_boundary_gravity> : 3000,
    <item:mahoutsukai:scroll_damage_exchange> : 850,
    <item:mahoutsukai:scroll_damage_replication> : 5275,
    <item:mahoutsukai:scroll_fallen_down> : 3300,
    <item:mahoutsukai:scroll_familiars_garden> : 1200,
    <item:mahoutsukai:scroll_fay_sight> : 2150,
    <item:mahoutsukai:scroll_gandr> : 2950,
    <item:mahoutsukai:scroll_geas> : 3025,
    <item:mahoutsukai:scroll_immunity_exchange> : 1300,
    <item:mahoutsukai:scroll_insight> : 2000,
    <item:mahoutsukai:scroll_mental_displacement> : 1600,
    <item:mahoutsukai:scroll_mystic_eyes> : 3925,
    <item:mahoutsukai:scroll_possess_entity> : 3450,
    <item:mahoutsukai:scroll_prediction> : 1900,
    <item:mahoutsukai:scroll_presence_concealment> : 1000,
    <item:mahoutsukai:scroll_probability_alter> : 3150,
    <item:mahoutsukai:scroll_projectile_displacement> : 1300,
    <item:mahoutsukai:scroll_protective_displacement> : 1375,
    <item:mahoutsukai:scroll_proximity_projection> : 925,
    <item:mahoutsukai:scroll_recall_familiar> : 1525,
    <item:mahoutsukai:scroll_reversion_eyes> : 1725,
    <item:mahoutsukai:scroll_rho_aias> : 5225,
    <item:mahoutsukai:scroll_selective_displacement> : 1575,
    <item:mahoutsukai:scroll_spatial_disorientation> : 5550,
    <item:mahoutsukai:scroll_strengthening> : 600,
    <item:mahoutsukai:scroll_summon_familiar> : 1425,
    <item:mahoutsukai:scroll_swap_familiar> : 1250,
    <item:mahoutsukai:scroll_treasury_projection> : 1075,
    <item:mahoutsukai:scroll_weapon_shooter> : 2850,
    <item:mahoutsukai:fae_essence> : 25,
    <item:mahoutsukai:faecake> : 25,
    <item:mahoutsukai:guidebook> : 50,
    <item:mahoutsukai:hammer> : 850,
    <item:mahoutsukai:kodoku> : 50,
    <item:mahoutsukai:mortar> : 225,
    <item:mahoutsukai:mortar_and_pestle> : 750,
    <item:mahoutsukai:pestle> : 525,
    <item:mahoutsukai:powdered_diamond> : 50,
    <item:mahoutsukai:powdered_iron> : 125,
    <item:mahoutsukai:scroll_boundary_alarm> : 975,
    <item:mahoutsukai:scroll_boundary_raise_enclosure> : 750,
    <item:mahoutsukai:scroll_boundary_tangible> : 675,
    <item:mahoutsukai:scroll_projection> : 825,
    <item:mahoutsukai:scroll_retribution> : 725,
    <item:mahoutsukai:spell_cloth> : 350
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