//Digitalizer
craftingTable.addShapeless("digitalizer_recipe", <item:tfb2:fop_digitalizer>, [<item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:the_vault:vault_bronze>, <item:minecraft:diamond>]);


//Digitalized Items into Coin
craftingTable.addShapeless("digitalized_coin", <item:the_vault:vault_bronze>, [<item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>, <item:tfb2:fop_digitalized_item>]);


//Digitalize Items - miniscule items
craftingTable.addShapeless("digitalize_miniscule", <item:tfb2:fop_digitalized_item>, [<item:tfb2:fop_digitalizer>.reuse(), <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>, <tag:items:tfb2:fop_miniscule>]);


//Digitalize Items - small items
craftingTable.addShapeless("digitalize_small", <item:tfb2:fop_digitalized_item> * 3, [<item:tfb2:fop_digitalizer>.reuse(), <tag:items:tfb2:fop_small>]);


//Digitalize Items - medium items
craftingTable.addShapeless("digitalize_medium", <item:tfb2:fop_digitalized_item> * 6, [<item:tfb2:fop_digitalizer>.reuse(), <tag:items:tfb2:fop_medium>]);


//Digitalize Items - large items
craftingTable.addShapeless("digitalize_large", <item:tfb2:fop_digitalized_item> * 12, [<item:tfb2:fop_digitalizer>.reuse(), <tag:items:tfb2:fop_large>]);
