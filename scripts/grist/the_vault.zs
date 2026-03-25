import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import stdlib.List;
import mods.projecte.CustomEMC;
import mods.projecte.NSSResolver;

// List of items
val alchemyBroken as int[IItemStack] = {
    <item:the_vault:magnet> : 0, 
    <item:the_vault:jewel> : 0, 
    <item:woldsvaults:trinket_pouch> : 0, 
    <item:the_vault:trinket> : 0, 
    <item:the_vault:augment> : 0, 
    <item:the_vault:vault_catalyst_infused> : 0, 
    <item:the_vault:deck_socket> : 0, 
    <item:the_vault:card_deck> : 0, 
    <item:the_vault:rang> : 0, 
    <item:the_vault:faceted_focus> : 0, 
    <item:the_vault:card> : 0,
    <item:the_vault:inscription> : 0,
    <item:the_vault:soul_shard> : 0,
    <item:the_vault:soul_dust> : 0,
    <item:the_vault:banished_soul> : 0,
    <item:the_vault:sword> : 0,
    <item:the_vault:axe> : 0,
    <item:the_vault:helmet> : 0,
    <item:the_vault:chestplate> : 0,
    <item:the_vault:leggings> : 0,
    <item:the_vault:boots> : 0,
    <item:the_vault:shield> : 0,
    <item:the_vault:wand> : 0,
    <item:the_vault:focus> : 0,
    <item:the_vault:battlestaff> : 0,
    <item:the_vault:loot_sack> : 0,
    <item:the_vault:plushie> : 0,
    <item:the_vault:trident> : 0,
    <item:the_vault:magnet> : 0,
    <item:the_vault:majestic_charm> : 0,
    <item:the_vault:grand_charm> : 0,
    <item:the_vault:large_charm> : 0,
    <item:the_vault:small_charm> : 0
};

// For each item in the map, check if we're in release mode. If we are, anything below 26 EMC/FMC becomes unburnable for EMC
for item, value in alchemyBroken {
    item.modifyTooltip((stack, tooltip, flag) => {
        tooltip.insert(1, "§k_§r§4Combine with Alchemy Crate to be able to Break Down");
    });
}