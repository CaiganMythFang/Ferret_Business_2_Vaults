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
    <item:compressium:velvet_block_1> : 100,
    <item:compressium:vault_plating_block_1> : 4050,
    <item:compressium:rotten_meat_block_1> : 100,
    <item:compressium:ornate_block_1> : 100,
    <item:compressium:carbon_block_1> : 3600,
    <item:compressium:vault_plating_block_1> : 4050,
    <item:compressium:chromatic_gold_block_1> : 759825,
    <item:compressium:chromatic_gold_block_2> : 6838425,
    <item:compressium:chromatic_gold_block_3> : 61545825,
    <item:compressium:chromatic_gold_block_4> : 553912425,
    <item:compressium:chromatic_gold_block_5> : 4985211825,
    <item:compressium:chromatic_gold_block_6> : 44866906425,
    <item:compressium:chromatic_gold_block_7> : 403802157825,
    <item:compressium:chromatic_gold_block_8> : 3634219420425,
    <item:compressium:chromatic_gold_block_9> : 32707974783825,
    <item:compressium:sandy_block_1> : 100,
    <item:compressium:gilded_block_1> : 100,
    <item:compressium:vault_essence_block_1> : 70875,
    <item:compressium:vault_essence_block_1> : 637875,
    <item:compressium:vault_essence_block_1> : 5740875,
    <item:compressium:vault_essence_block_1> : 51667875,
    <item:compressium:vault_essence_block_1> : 465010875,
    <item:compressium:vault_essence_block_1> : 4185097875,
    <item:compressium:vault_essence_block_1> : 37665880875,
    <item:compressium:vault_essence_block_1> : 338992927875,
    <item:compressium:vault_essence_block_1> : 3050936350875,
    <item:compressium:living_rock_block_cobble_1> : 100,
    <item:compressium:ancient_copper_block_1> : 225,
    <item:compressium:vault_cobblestone_1> : 1,
    <item:compressium:vault_cobblestone_2> : 10,
    <item:compressium:vault_stone_1> : 1,
    <item:compressium:vault_stone_2> : 10,
    <item:compressium:silver_scrap_block_1> : 2025,
    <item:compressium:chromatic_steel_block_1> : 21825,
    <item:compressium:carbon_block_1> : 3600,
    <item:compressium:vault_diamond_block_1> : 10125,
    <item:compressium:magic_silk_block_1> : 12550,
    <item:compressium:andesite_1> : 0,
    <item:compressium:andesite_2> : 0,
    <item:compressium:andesite_3> : 0,
    <item:compressium:andesite_4> : 0,
    <item:compressium:andesite_5> : 0,
    <item:compressium:andesite_6> : 0,
    <item:compressium:andesite_7> : 0,
    <item:compressium:andesite_8> : 0,
    <item:compressium:andesite_9> : 0,
    <item:compressium:clay_1> : 225,
    <item:compressium:clay_2> : 2025,
    <item:compressium:clay_3> : 18225,
    <item:compressium:clay_4> : 164025,
    <item:compressium:clay_5> : 1476225,
    <item:compressium:clay_6> : 13286025,
    <item:compressium:clay_7> : 119574225,
    <item:compressium:clay_8> : 1076168025,
    <item:compressium:clay_9> : 9685512225,
    <item:compressium:coal_1> : 225,
    <item:compressium:coal_2> : 2025,
    <item:compressium:coal_3> : 18225,
    <item:compressium:coal_4> : 164025,
    <item:compressium:coal_5> : 1476225,
    <item:compressium:coal_6> : 13286025,
    <item:compressium:coal_7> : 119574225,
    <item:compressium:coal_8> : 1076168025,
    <item:compressium:coal_9> : 9685512225,
    <item:compressium:cobblestone_1> : 0,
    <item:compressium:cobblestone_2> : 0,
    <item:compressium:cobblestone_3> : 0,
    <item:compressium:cobblestone_4> : 0,
    <item:compressium:cobblestone_5> : 0,
    <item:compressium:cobblestone_6> : 0,
    <item:compressium:cobblestone_7> : 0,
    <item:compressium:cobblestone_8> : 0,
    <item:compressium:cobblestone_9> : 0,
    <item:compressium:copper_1> : 8100,
    <item:compressium:copper_2> : 72900,
    <item:compressium:copper_3> : 656100,
    <item:compressium:copper_4> : 5904900,
    <item:compressium:copper_5> : 53144100,
    <item:compressium:copper_6> : 478296900,
    <item:compressium:copper_7> : 4304672100,
    <item:compressium:copper_8> : 38742048900,
    <item:compressium:copper_9> : 348678440100,
    <item:compressium:diamond_1> : 145800,
    <item:compressium:diamond_2> : 1312200,
    <item:compressium:diamond_3> : 11809800,
    <item:compressium:diamond_4> : 106288200,
    <item:compressium:diamond_5> : 956593800,
    <item:compressium:diamond_6> : 8609344200,
    <item:compressium:diamond_7> : 77484097800,
    <item:compressium:diamond_8> : 697356880200,
    <item:compressium:diamond_9> : 6276211921800,
    <item:compressium:diorite_1> : 0,
    <item:compressium:diorite_2> : 0,
    <item:compressium:diorite_3> : 0,
    <item:compressium:diorite_4> : 0,
    <item:compressium:diorite_5> : 0,
    <item:compressium:diorite_6> : 0,
    <item:compressium:diorite_7> : 0,
    <item:compressium:diorite_8> : 0,
    <item:compressium:diorite_9> : 0,
    <item:compressium:dirt_1> : 0,
    <item:compressium:dirt_2> : 0,
    <item:compressium:dirt_3> : 0,
    <item:compressium:dirt_4> : 0,
    <item:compressium:dirt_5> : 0,
    <item:compressium:dirt_6> : 0,
    <item:compressium:dirt_7> : 0,
    <item:compressium:dirt_8> : 0,
    <item:compressium:dirt_9> : 0,
    <item:compressium:emerald_1> : 76950,
    <item:compressium:emerald_2> : 692550,
    <item:compressium:emerald_3> : 6232950,
    <item:compressium:emerald_4> : 56096550,
    <item:compressium:emerald_5> : 504868950,
    <item:compressium:emerald_6> : 4543820550,
    <item:compressium:emerald_7> : 40894384950,
    <item:compressium:emerald_8> : 368049464550,
    <item:compressium:emerald_9> : 3312445180950,
    <item:compressium:endstone_1> : 0,
    <item:compressium:endstone_2> : 0,
    <item:compressium:endstone_3> : 0,
    <item:compressium:endstone_4> : 0,
    <item:compressium:endstone_5> : 0,
    <item:compressium:endstone_6> : 0,
    <item:compressium:endstone_7> : 0,
    <item:compressium:endstone_8> : 0,
    <item:compressium:endstone_9> : 0,
    <item:compressium:gold_1> : 54675,
    <item:compressium:gold_2> : 492075,
    <item:compressium:gold_3> : 4428675,
    <item:compressium:gold_4> : 39858075,
    <item:compressium:gold_5> : 358722675,
    <item:compressium:gold_6> : 3228504075,
    <item:compressium:gold_7> : 29056536675,
    <item:compressium:gold_8> : 261508830075,
    <item:compressium:gold_9> : 2353579470675,
    <item:compressium:granite_1> : 0,
    <item:compressium:granite_2> : 0,
    <item:compressium:granite_3> : 0,
    <item:compressium:granite_4> : 0,
    <item:compressium:granite_5> : 0,
    <item:compressium:granite_6> : 0,
    <item:compressium:granite_7> : 0,
    <item:compressium:granite_8> : 0,
    <item:compressium:granite_9> : 0,
    <item:compressium:gravel_1> : 0,
    <item:compressium:gravel_2> : 0,
    <item:compressium:gravel_3> : 0,
    <item:compressium:gravel_4> : 0,
    <item:compressium:gravel_5> : 0,
    <item:compressium:gravel_6> : 0,
    <item:compressium:gravel_7> : 0,
    <item:compressium:gravel_8> : 0,
    <item:compressium:gravel_9> : 0,
    <item:compressium:iron_1> : 10125,
    <item:compressium:iron_2> : 91125,
    <item:compressium:iron_3> : 820125,
    <item:compressium:iron_4> : 7381125,
    <item:compressium:iron_5> : 66430125,
    <item:compressium:iron_6> : 597871125,
    <item:compressium:iron_7> : 5380840125,
    <item:compressium:iron_8> : 48427561125,
    <item:compressium:iron_9> : 435848050125,
    <item:compressium:lapis_1> : 1575,
    <item:compressium:lapis_2> : 14175,
    <item:compressium:lapis_3> : 127575,
    <item:compressium:lapis_4> : 1148175,
    <item:compressium:lapis_5> : 10333575,
    <item:compressium:lapis_6> : 93002175,
    <item:compressium:lapis_7> : 837019575,
    <item:compressium:lapis_8> : 7533176175,
    <item:compressium:lapis_9> : 67798585575,
    <item:compressium:netherite_1> : 490050,
    <item:compressium:netherite_2> : 4410450,
    <item:compressium:netherite_3> : 39694050,
    <item:compressium:netherite_4> : 357246450,
    <item:compressium:netherite_5> : 3215218050,
    <item:compressium:netherite_6> : 28936962450,
    <item:compressium:netherite_7> : 260432662050,
    <item:compressium:netherite_8> : 2343893958450,
    <item:compressium:netherite_9> : 21095045626050,
    <item:compressium:netherrack_1> : 0,
    <item:compressium:netherrack_2> : 0,
    <item:compressium:netherrack_3> : 0,
    <item:compressium:netherrack_4> : 0,
    <item:compressium:netherrack_5> : 0,
    <item:compressium:netherrack_6> : 0,
    <item:compressium:netherrack_7> : 0,
    <item:compressium:netherrack_8> : 0,
    <item:compressium:netherrack_9> : 0,
    <item:compressium:obsidian_1> : 225,
    <item:compressium:obsidian_2> : 2025,
    <item:compressium:obsidian_3> : 18225,
    <item:compressium:obsidian_4> : 164025,
    <item:compressium:obsidian_5> : 1476225,
    <item:compressium:obsidian_6> : 13286025,
    <item:compressium:obsidian_7> : 119574225,
    <item:compressium:obsidian_8> : 1076168025,
    <item:compressium:obsidian_9> : 9685512225,
    <item:compressium:quartz_1> : 4500,
    <item:compressium:quartz_2> : 40500,
    <item:compressium:quartz_3> : 364500,
    <item:compressium:quartz_4> : 3280500,
    <item:compressium:quartz_5> : 29524500,
    <item:compressium:quartz_6> : 265720500,
    <item:compressium:quartz_7> : 2391484500,
    <item:compressium:quartz_8> : 21523360500,
    <item:compressium:quartz_9> : 193710244500,
    <item:compressium:redsand_1> : 0,
    <item:compressium:redsand_2> : 0,
    <item:compressium:redsand_3> : 0,
    <item:compressium:redsand_4> : 0,
    <item:compressium:redsand_5> : 0,
    <item:compressium:redsand_6> : 0,
    <item:compressium:redsand_7> : 0,
    <item:compressium:redsand_8> : 0,
    <item:compressium:redsand_9> : 0,
    <item:compressium:redstone_1> : 900,
    <item:compressium:redstone_2> : 8100,
    <item:compressium:redstone_3> : 72900,
    <item:compressium:redstone_4> : 656100,
    <item:compressium:redstone_5> : 5904900,
    <item:compressium:redstone_6> : 53144100,
    <item:compressium:redstone_7> : 478296900,
    <item:compressium:redstone_8> : 4304672100,
    <item:compressium:redstone_9> : 38742048900,
    <item:compressium:sand_1> : 0,
    <item:compressium:sand_2> : 0,
    <item:compressium:sand_3> : 0,
    <item:compressium:sand_4> : 0,
    <item:compressium:sand_5> : 0,
    <item:compressium:sand_6> : 0,
    <item:compressium:sand_7> : 0,
    <item:compressium:sand_8> : 0,
    <item:compressium:sand_9> : 0,
    <item:compressium:snow_1> : 0,
    <item:compressium:snow_2> : 0,
    <item:compressium:snow_3> : 0,
    <item:compressium:snow_4> : 0,
    <item:compressium:snow_5> : 0,
    <item:compressium:snow_6> : 0,
    <item:compressium:snow_7> : 0,
    <item:compressium:snow_8> : 0,
    <item:compressium:snow_9> : 0,
    <item:compressium:soulsand_1> : 225,
    <item:compressium:soulsand_2> : 2025,
    <item:compressium:soulsand_3> : 18225,
    <item:compressium:soulsand_4> : 164025,
    <item:compressium:soulsand_5> : 1476225,
    <item:compressium:soulsand_6> : 13286025,
    <item:compressium:soulsand_7> : 119574225,
    <item:compressium:soulsand_8> : 1076168025,
    <item:compressium:soulsand_9> : 9685512225,
    <item:compressium:stone_1> : 0,
    <item:compressium:stone_2> : 0,
    <item:compressium:stone_3> : 0,
    <item:compressium:stone_4> : 0,
    <item:compressium:stone_5> : 0,
    <item:compressium:stone_6> : 0,
    <item:compressium:stone_7> : 0,
    <item:compressium:stone_8> : 0,
    <item:compressium:stone_9> : 0
};

// For each item in the map, check if we're in release mode. If we are, anything below 26 EMC/FMC becomes unburnable for EMC
for item, value in priceTable {
    if (release_mode == true){
        if (value < 26 ) {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), 0);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
        } else if (value > 25 && value < 1000000000) {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
        } else {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), 0);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(1, "FMC TOO LARGE TO SAFELY TRANSFER");
            });
        }
        if (value > 999 && value < 10001) {
            <tag:items:tfb2:fop_miniscule>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Miniscule");
            });
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
    } else {
        if (value < 1 ) {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), 0);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
        } else if (value > 0 && value < 1000000001) {
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), value);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
        } else if (value > 1000000000){
            CustomEMC.setEMCValue(NSSResolver.fromItem(item), 0);
            <tag:items:projectextended:blacklist_condenser>.add(item);
            <tag:items:projectextended:blacklist_learning>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(1, "FMC TOO LARGE TO SAFELY TRANSFER");
            });
        }
        if (value > 10000 && value < 25001) {
            <tag:items:tfb2:fop_small>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Small");
            });
        }
        if (value > 25000 && value < 75001) {
            <tag:items:tfb2:fop_medium>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Medium");
            });
        }
        if (value > 75000) {
            <tag:items:tfb2:fop_large>.add(item);
            item.modifyTooltip((stack, tooltip, flag) => {
                tooltip.insert(2, "FOP Digitization Value: Large");
            });
        }
    }
}