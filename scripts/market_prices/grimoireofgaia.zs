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
    <item:grimoireofgaia:ant_hill_spawn_egg> : 0,
    <item:grimoireofgaia:ant_salvager_spawn_egg> : 0,
    <item:grimoireofgaia:ant_spawn_egg> : 0,
    <item:grimoireofgaia:anubis_spawn_egg> : 0,
    <item:grimoireofgaia:arachne_spawn_egg> : 0,
    <item:grimoireofgaia:bag_arrows> : 0,
    <item:grimoireofgaia:bag_book> : 0,
    <item:grimoireofgaia:bag_record> : 0,
    <item:grimoireofgaia:chest_jungle> : 0,
    <item:grimoireofgaia:chest_dungeon> : 0,
    <item:grimoireofgaia:chest_desert> : 0,
    <item:grimoireofgaia:centaur_spawn_egg> : 0,
    <item:grimoireofgaia:cecaelia_spawn_egg> : 0,
    <item:grimoireofgaia:cave_spider_staff> : 0,
    <item:grimoireofgaia:bust_vampire> : 0,
    <item:grimoireofgaia:box_iron> : 0,
    <item:grimoireofgaia:box_hat> : 0,
    <item:grimoireofgaia:box_gold> : 0,
    <item:grimoireofgaia:box_nether> : 0,
    <item:grimoireofgaia:box_old> : 0,
    <item:grimoireofgaia:box_overworld> : 0,
    <item:grimoireofgaia:broom> : 0,
    <item:grimoireofgaia:bust_gorgon> : 0,
    <item:grimoireofgaia:bust_minotaur> : 0,
    <item:grimoireofgaia:box_end> : 0,
    <item:grimoireofgaia:box_egg> : 0,
    <item:grimoireofgaia:box_diamond> : 0,
    <item:grimoireofgaia:book_of_memory> : 0,
    <item:grimoireofgaia:bone_shield> : 0,
    <item:grimoireofgaia:bone_knight_spawn_egg> : 0,
    <item:grimoireofgaia:behender_spawn_egg> : 0,
    <item:grimoireofgaia:bee_spawn_egg> : 0,
    <item:grimoireofgaia:banshee_spawn_egg> : 0,
    <item:grimoireofgaia:bust_sphinx> : 0,
    <item:grimoireofgaia:bust_valkyrie> : 0,
    <item:grimoireofgaia:headgear_arrow> : 0,
    <item:grimoireofgaia:headgear_bolt> : 0,
    <item:grimoireofgaia:projectile_bomb> : 0,
    <item:grimoireofgaia:weapon_book> : 0,
    <item:grimoireofgaia:weapon_book_battle> : 0,
    <item:grimoireofgaia:weapon_book_hunger> : 0,
    <item:grimoireofgaia:weapon_book_nature> : 0,
    <item:grimoireofgaia:weapon_book_wither> : 0,
    <item:grimoireofgaia:doll_dryad> : 0,
    <item:grimoireofgaia:dryad_spawn_egg> : 0,
    <item:grimoireofgaia:doll_dullahan> : 0,
    <item:grimoireofgaia:dullahan_spawn_egg> : 0,
    <item:grimoireofgaia:dwarf_spawn_egg> : 0,
    <item:grimoireofgaia:headgear_ears_elf> : 0,
    <item:grimoireofgaia:elytra_fragment> : 0,
    <item:grimoireofgaia:emerald_shard> : 0,
    <item:grimoireofgaia:quill> : 0,
    <item:grimoireofgaia:projectile_bubble> : 0,
    <item:grimoireofgaia:experience_diamond> : 0,
    <item:grimoireofgaia:experience_gold> : 0,
    <item:grimoireofgaia:experience_iron> : 0,
    <item:grimoireofgaia:cursed_metal_sword> : 0,
    <item:grimoireofgaia:cyan_flower_spawn_egg> : 0,
    <item:grimoireofgaia:cyclops_spawn_egg> : 0,
    <item:grimoireofgaia:deathword_spawn_egg> : 0,
    <item:grimoireofgaia:diamond_shard> : 0,
    <item:grimoireofgaia:headgear_mob> : 0,
    <item:grimoireofgaia:chest_spawn_egg> : 0,
    <item:grimoireofgaia:cobble_golem_spawn_egg> : 0,
    <item:grimoireofgaia:cobblestone_golem_spawn_egg> : 0,
    <item:grimoireofgaia:weapon_book_buff> : 0,
    <item:grimoireofgaia:creep_spawn_egg> : 0,
    <item:grimoireofgaia:doll_creeper_girl> : 0,
    <item:grimoireofgaia:spawn_creeper_girl> : 0,
    <item:grimoireofgaia:headgear_book> : 0,
    <item:grimoireofgaia:mimic_spawn_egg> : 0,
    <item:grimoireofgaia:doll_nine_tails> : 0,
    <item:grimoireofgaia:weapon_book_nightmare> : 0,
    <item:grimoireofgaia:nether_wart_jam> : 0,
    <item:grimoireofgaia:naga_spawn_egg> : 0,
    <item:grimoireofgaia:mummy_spawn_egg> : 0,
    <item:grimoireofgaia:monster_feed> : 0,
    <item:grimoireofgaia:minotaurus_spawn_egg> : 0,
    <item:grimoireofgaia:minotaur_spawn_egg> : 0,
    <item:grimoireofgaia:premium_monster_feed> : 0,
    <item:grimoireofgaia:projectile_poison> : 0,
    <item:grimoireofgaia:headgear_doll> : 0,
    <item:grimoireofgaia:weapon_book_ender> : 0,
    <item:grimoireofgaia:fireshard> : 0,
    <item:grimoireofgaia:goblin_feral_spawn_egg> : 0,
    <item:grimoireofgaia:spawn_ender_girl> : 0,
    <item:grimoireofgaia:doll_ender_girl> : 0,
    <item:grimoireofgaia:ender_eye_spawn_egg> : 0,
    <item:grimoireofgaia:ender_dragon_girl_spawn_egg> : 0,
    <item:grimoireofgaia:knuckles> : 0,
    <item:grimoireofgaia:kobold_spawn_egg> : 0,
    <item:grimoireofgaia:projectile_magic> : 0,
    <item:grimoireofgaia:magic_staff> : 0,
    <item:grimoireofgaia:doll_maid> : 0,
    <item:grimoireofgaia:deco_mandragora_pot> : 0,
    <item:grimoireofgaia:mandragora_spawn_egg> : 0,
    <item:grimoireofgaia:mandrake> : 0,
    <item:grimoireofgaia:hunter_spawn_egg> : 0,
    <item:grimoireofgaia:weapon_book_freezing> : 0,
    <item:grimoireofgaia:gryphon_spawn_egg> : 0,
    <item:grimoireofgaia:fan> : 0,
    <item:grimoireofgaia:deco_nest_harpy> : 0,
    <item:grimoireofgaia:harpy_spawn_egg> : 0,
    <item:grimoireofgaia:giga_gear> : 0,
    <item:grimoireofgaia:heavy_barbell> : 0,
    <item:grimoireofgaia:holstaurus_token> : 0,
    <item:grimoireofgaia:honeydew> : 0,
    <item:grimoireofgaia:fur> : 0,
    <item:grimoireofgaia:deco_garden_gnome> : 0,
    <item:grimoireofgaia:gelatinous_slime_spawn_egg> : 0,
    <item:grimoireofgaia:goblin_spawn_egg> : 0,
    <item:grimoireofgaia:gold_shield> : 0,
    <item:grimoireofgaia:golden_apple_pie> : 0,
    <item:grimoireofgaia:golden_apple_pie_slice> : 0,
    <item:grimoireofgaia:gravemite_spawn_egg> : 0,
    <item:grimoireofgaia:flesh_lich_spawn_egg> : 0,
    <item:grimoireofgaia:pearl_block> : 0,
    <item:grimoireofgaia:fan_ice> : 0,
    <item:grimoireofgaia:fan_fire> : 0,
    <item:grimoireofgaia:orc_spawn_egg> : 0,
    <item:grimoireofgaia:oni_spawn_egg> : 0,
    <item:grimoireofgaia:nine_tails_spawn_egg> : 0,
    <item:grimoireofgaia:minotaur_hammer> : 0,
    <item:grimoireofgaia:projectile_random_magic> : 0,
    <item:grimoireofgaia:sharko_spawn_egg> : 0,
    <item:grimoireofgaia:shaman_spawn_egg> : 0,
    <item:grimoireofgaia:seashell_hairpin> : 0,
    <item:grimoireofgaia:satyress_spawn_egg> : 0,
    <item:grimoireofgaia:rotten_heart> : 0,
    <item:grimoireofgaia:ring_of_speed> : 0,
    <item:grimoireofgaia:ring_of_night> : 0,
    <item:grimoireofgaia:ring_of_jump> : 0,
    <item:grimoireofgaia:metal_dagger> : 0,
    <item:grimoireofgaia:metal_club> : 0,
    <item:grimoireofgaia:weapon_book_metal> : 0,
    <item:grimoireofgaia:mermaid_spawn_egg> : 0,
    <item:grimoireofgaia:doll_mermaid> : 0,
    <item:grimoireofgaia:meat> : 0,
    <item:grimoireofgaia:matango_spawn_egg> : 0,
    <item:grimoireofgaia:iron_shield> : 0,
    <item:grimoireofgaia:ring_of_haste> : 0,
    <item:grimoireofgaia:shiny_pearl> : 0,
    <item:grimoireofgaia:siren_spawn_egg> : 0,
    <item:grimoireofgaia:skeleton_staff> : 0,
    <item:grimoireofgaia:doll_slime_girl> : 0,
    <item:grimoireofgaia:spawn_slime_girl> : 0,
    <item:grimoireofgaia:sludge_girl_spawn_egg> : 0,
    <item:grimoireofgaia:soulfire> : 0,
    <item:grimoireofgaia:wizard_harpy_spawn_egg> : 0,
    <item:grimoireofgaia:yuki_onna_spawn_egg> : 0,
    <item:grimoireofgaia:zombie_staff> : 0,
    <item:grimoireofgaia:withered_brain> : 0,
    <item:grimoireofgaia:sporeling_spawn_egg> : 0,
    <item:grimoireofgaia:trader_token> : 0,
    <item:grimoireofgaia:valkyrie_spawn_egg> : 0,
    <item:grimoireofgaia:projectile_web> : 0,
    <item:grimoireofgaia:werecat_spawn_egg> : 0,
    <item:grimoireofgaia:weresheep_token> : 0,
    <item:grimoireofgaia:horse_spawn_egg> : 0,
    <item:grimoireofgaia:witch_spawn_egg> : 0,
    <item:grimoireofgaia:wither_cow_spawn_egg> : 0,
    <item:grimoireofgaia:spriggan_spawn_egg> : 0,
    <item:grimoireofgaia:stone_coal> : 0,
    <item:grimoireofgaia:stone_shield> : 0,
    <item:grimoireofgaia:succubus_spawn_egg> : 0,
    <item:grimoireofgaia:taproot> : 0,
    <item:grimoireofgaia:toad_spawn_egg> : 0,
    <item:grimoireofgaia:totem_of_undying_fragment> : 0,
    <item:grimoireofgaia:spawn_trader> : 0,
    <item:grimoireofgaia:sphinx_spawn_egg> : 0
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