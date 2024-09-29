### OVERALL CONFIGS
gear/[[gear_roll_type_pools.json]]
Controls what source of loot can drop which tier range of vault gear.

### SPECIFIC CONFIGS
#### Charms
[[charm.json]]
Controls the stats and ranges for Charms.
[[vault_charm.json]]
Possibly controls the bonus multiplier each charm tier grants. May be deprecated.
#### Durability
[[durability.json]]
Controls something related to armor, possibly non-vault gear armor.
#### Vault Enchanter
[[gear_enchantment.json]]
Possibly deprecated, lists all enchantments available for the Vault Enchanter but lists some that should be disabled?

#### Gear Models
[[gear_model_roll_rarities.json]]
Wold Modified. Controls the rarity of all gear unlocks. Possibly also controls if they can roll.

#### Trinkets
[[trinket.json]]
Controls what trinkets are available, their effects, how many uses they get when found vs crafted, etc.

#### Unique Gear
[[unique_gear.json]]
[[unique_gear_nuke.json]]
Controls what special attributes are on unique gear when it is found. Not fully implemented yet.

#### Vault Potions
[[vault_potion.json]]
Controls the values of various Vault Potions, including how much of each thing is needed to recharge them.

#### Vault Recycler
[[vault_recycler.json]]
Controls what Vault Gear recycles into using the Vault Recycler.

#### Cooldowns
gear/[[gear_common.json]]
Controls the cooldown of swapping certain gear slots (such as swapping between chestplate and elytra)

#### Crafting
gear/[[gear_crafting.json]]
Controls the proficiency skill in Gear Crafting.
gear/[[gear_modification.json]]
Probably deprecated. Covers repairing vault gear.

#### Rolling
gear/[[gear_roll_type.json]]
Determines what loot pools  each listed 'rarity' on unidentified vault gear can roll.

#### Modifiers and Tags
gear/[[gear_tags.json]]
Wold Changed. What each gear tag translates to on the tooltip

gear_modifiers/[[file structure/config/the_vault/gear_modifiers/axe.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/boots.json]]
gear_modifiers/[[bottle.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/chestplate.json]]
gear_modifiers/[[drink.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/focus.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/helmet.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/idol_benevolent.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/idol_malevolence.json|idol_malevolence.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/idol_omniscient.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/idol_timekeeper.json]]
gear_modifiers/[[jewel.json]]
gear_modifiers/[[leggings.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/magnet.json]]
gear_modifiers/[[shield.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/sword.json]]
gear_modifiers/[[unique.json]]
gear_modifiers/[[file structure/config/the_vault/gear_modifiers/wand.json]]
Contains the list of Implicits, Prefixes, and Suffixes on specific pieces of gear.

#### Gear Workbench
gear_workbench/[[file structure/config/the_vault/gear_workbench/axe.json|axe.json]]
gear_workbench/[[boots.json]]
gear_workbench/[[chestplate.json]]
gear_workbench/[[focus.json]]
gear_workbench/[[helmet.json]]
gear_workbench/[[idol_malevolence.json]]
gear_workbench/[[idol_omniscient.json]]
gear_workbench/[[idol_timekeeper.json]]
gear_workbench/[[leggings.json]]
gear_workbench/[[magnet.json]]
gear_workbench/[[shield.json]]
gear_workbench/[[sword.json]]
gear_workbench/[[wand.json]]
Contains the list of Prefixes and Suffixes that can be crafted onto gear, and their costs.


#### Jewel Cutting
[[vault_jewel_cutting.json]]
Controls the values for Jewel Cutting.

#### JEWEL REWORK IDEAS
https://discord.com/channels/889424759018901514/1202232461451604028/1282609277433024583
1. Jewel Rework fixes and reasoning: 
2) Jewels should be size 5/10/15/20/25: This is mostly just a visibility/QoL change, as jewel affix ranges can always be adjusted accordingly and tool capacities could similarly always be adjusted accordingly. It's significantly easier to see what jewels will/won't fit with multiples of 5. 
3) Maximum jewel affix values should be increased roughly 50% compared to current values: For most tools, most stats don't need to be on every single jewel. For example, a shattering ore tool only needs copiously and dura on a majority of jewels. With a size of 15 for these Flawed jewels, a 50% increase in the jewel ranges achieves an equilibrium for the ideal jewel setup. 
4) Jewel affix ranges should be tightened: Currently, many jewels are scrapped for one of 2 reasons. Either they have too high of a size to be worthwhile, or they have bad rolls on their affixes. The new system fixes the first issue, but the roll ranges are so wide that they need to be narrowed so we can reasonably achieve a system where you don't toss away a majority of the jewels you get. 
5) Drop rate of jewel pouches should be lowered significantly: This couples with points 3 and 5, jewels need to be rarer if we want to increase the average value of those individual jewels. 
6) Average quality of jewels should be increased: With a lower drop rate, it becomes reasonable to make jewels more likely to be flawed/flawless/perfect. This means that (assuming good affixes) you are less likely to throw away jewels. 
7) Jeweler should be 2 levels 1 point each, each giving you another option in jewel pouches: This is mostly a buff to the average quality of jewels again, so this one really depends on exactly how rare jewel pouches are made to be. 
8) copiously/IQ/IR are mutually exclusive: This change ensures that jewels aren't tossed out because they roll both IQ/copiously, since then the IQ/IR or copiously is taking up precious space on a tool where it's useless. I'd also love it if Trap Disarm/copiously were mutually exclusive, but I'm unsure if you can do two separate conditionals so that trap disarm/IQ or IR _can_ roll together but not with copiously. 
9) double IR ranges: This is a consistency change to bring things in line with every other source of IQ and IR, currently IR jewels are just immediate scrap unless they happen to be on a jewel with other useful affixes. (edited)