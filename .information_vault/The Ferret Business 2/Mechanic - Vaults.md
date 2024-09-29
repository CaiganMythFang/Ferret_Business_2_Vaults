### OVERALL CONFIGS
 [[vault_crystal.json]]
Controls what themes, shapes, and objectives have a chance of being applied to a vault.
[[vault_crystal_catalyst_modifiers.json]]
Controls what modifiers can showup randomly in a Vault.
[[vault_general.json]]
Controls what items and blocks are blacklisted in Vaults.
[[vault_modifier_overlay.json]]
Controls the grid of modifier icons in a vault.
[[vault_modifier_pools.json]]
Controls what modifiers are applied to vaults at what levels, or for different types of vaults such as Plunderer or Raw, or from in-Vault mechanics such as Braziers.
[[vault_modifiers.json]]
Controls the descriptions and values for modifiers that can be in a vault.
### SPECIFIC CONFIGS
#### MAKING NEW ROOMS :
- Place Structure NBT in [structures](file:///J:/Curseforge%20Instances/Instances/Ferret%20Business%202%20-%20Vaults%20of%20Fortune/config/the_vault/gen/1.0/structures) in appropriate room type subfolder
- Create palette file for block replacements in [palettes](file:///J:/Curseforge%20Instances/Instances/Ferret%20Business%202%20-%20Vaults%20of%20Fortune/config/the_vault/gen/1.0/palettes), making a subfolder specifically for the new room
- Add to appropriate room config in [rooms](file:///J:/Curseforge%20Instances/Instances/Ferret%20Business%202%20-%20Vaults%20of%20Fortune/config/the_vault/gen/1.0/template_pools/vault/rooms)
- Create template file in appropriate room type subfolder in [rooms](file:///J:/Curseforge%20Instances/Instances/Ferret%20Business%202%20-%20Vaults%20of%20Fortune/config/the_vault/gen/1.0/template_pools/vault/rooms) 
- Add to [[template_pools.json]] 
- Add to [[palettes.json]]
#### Augments
[[augment.json]]
Controls the list of Augments and the drop rate of them in Completion Crates.
[[augment_box.json]]
Wolds Addition : Controls the list of Augments that can drop from the Augment box loot box.

#### Budding Crystals
[[crystal_budding.json]]
Controls the rate at which Budding Crystals will advance a growth stage.

#### Custom Entities
[[custom_entity_spawner.json]]
Controls special entities spawned by certain Vault features.

#### Vendoors
[[shop_pedestal.json]]
Controls what items can show up on Shop Pedestals inside Vendoors.

#### Tile Grouping
[[tile_groups.json]]
Seems to control what blocks and tile entities are considered in what group.

#### Vault Altar
[[vault_altar.json]]
Controls what Vault Rocks set when put on the Vault Altar.
[[vault_altar_ingredients.json]]
Controls what items can show up as ingredients for vault crystals
#### Vault Chest Traps?
[[vault_altar_chest.json]]
[[vault_bonus_chest.json]]
[[vault_chest.json]]
[[vault_coop_chest.json]]
[[vault_treasure_chest.json]]
Possibly controls part of the trapped chest system, but has an entry for exploding chests which aren't a thing? And chests that don't exist?

#### Vault Portal
[[vault_portal.json]]
Controls what are considered valid blocks for Vault Portals.
#### Timer
[[vault_timer.json]]
Controls the base timer (needs testing, may be hardcoded now?)

