# VH 18.1.0 | Update 18 | Hotfix

## Additions

- ~~The amount of bronze/gold in your inventory is now displayed in vault stations that use either currency~~
- ~~Added an Emerald slot to the vault enchanter~~
- ~~Added rarity overlay of vault gear. By default it is displayed while holding shift in any inventory, this can be changed to be always on.~~
- ~~Added the ability to hover an ability and keybind it immediately by pressing down the desired key while hovering it.~~

  

## Changes

- ~~Changed the “missed” Expertise **Divine**, which had no use after we removed God Affinity~~
    - ~~Now gives the player a chance to gain 2 reputation points instead of 1 when completing a god altar: 10,20,30% chance~~
- ~~Failing a God Altar no longer curses the vault, instead it will now revoke a reputation from said God for only that player.  ~~
    ~~_Listening to the community, while curses are in our opinion an OK reaction to a failed task, it does affect multiplayer vaults and can be seen as griefing other players, with this change, not only is that fixed, but the “punishment” for the failure condition is more inline with our future plans for the God system_~~
- ~~Changed behaviour of Adaptive Focus & Living modifier to only always favour on upgrade of the tier group.  ~~
    ~~_This makes it so that a gear piece does not upgrade a tier group if there isn’t a better one available, preventing gear from “becoming worse” when levelling up._~~
- ~~Modified the “create world” screen; added a world type button to the main menu, and organising the screen in general~~
- ~~Removed Wutodie from the end screen~~
- ~~Soul Mirror antique now provides a God Charm, but requires 6 instead of 4.~~
- ~~Slightly increased the chances of Dwellers in most themes~~
- ~~Slightly increased the tank chances in the Sandsworn series~~
- ~~Raid Mobs can no longer be affected by charm~~

  

## Bug Fixes

- Fixed JEI overlaying on skill, stat screen (and everything else JEI related)
- Fix ghost blocks not working in the void crucible
- Fixed XP Bar showing as full on the hud, even though it wasnt
- Fixed Vault Forge not allowing adjusting crafting by level  
    Fixed a server crash caused by incomplete configs, it will now warn you instead
- Fixed champion and bosses not being counted on the end screen
- Deeplings are now displayed on Void Augments
- Fixed transmog table from allowing button press when the result slot is full
- Performance increase for void crucible  
    _This should fix cake vault and chaos theme lag issues_
- Fixed issues with coin pouch not counting coins correctly
- Fixed deck modifiers not applying correctly if it only requires 1 condition to be met
- Fixed raid mobs getting ethereal from brazier vaults

# VH 3.18.0 | Update 18

  
  

## Highlights

- ~~New and Improved Option Screen~~
    
    - ~~Accessed through Options → Vault Hunters Options~~
    - **Vault Settings**: Change settings and gamerules for your world/server
        - Can also be accessed when creating a new world
    - **Accessibility Settings**: Customize client-side options
        - Added an option that allows you to disable the vault level hud above your hotbar.
        - Added Treasure Door Names: Shows name of treasure door when within 7 blocks
        - New Option to change the number of hunter particles (Particle Density)
    - ~~**Patreon Rewards**: For Patreon users to customize display name/color and access other rewards~~
- ~~Healthbars and Damage Indicators~~
    
    - ~~Healthbars can be customised in the accessibility setting~~
    - ~~Mob Group icon displays next to the health bar in order to help players understand the mob system~~
    - ~~By default, health bars & damage indicators are only visible inside vaults, but this can be changed~~
    - ~~Damage Indicators colours varies based on the damage source (critical hits, chain attacks, abilities etc.), and colours can be altered in the accessibility settings~~
- Living Gear & Adaptive Focus
    
    - Living Modifier  
        _We wanted to include a new system for gear to automatically level with the player, in order to cut back on some of the “chore-feel” of constantly upgrading your gear, this modifier helps that aim!_
        - Will level up the gear pieces you wear or hold when successfully completing a vault
            - The level up is equal to your current level
        - This modifier is extremely rare, and can not be altered by any focus, it can also not occur on crafted gear.
    - Adaptive Focus  
        _These focuses offer a more deterministic way of keeping gear for longer, with the same aim of lowering the “chore-feel” of upgrading your gear. It also makes finding Legendary pieces early, much stronger._
        - Obtained by scrapping **Omega** gear pieces, there is a 25% chance when scrapping a non-crafted omega gear piece to get the focus.
        - Used in the Artisan Station, in the Exotic Tab
            - It can be extremely expensive to use, based on the level delta, and the crafting potential on the gear piece.
        - It upgrades the tier of every modifier on the item
        - It takes up one repair slot on use
- ~~Coin Pouch~~
    
    - ~~This _soulbound_ item can store and auto compress all of your vault bronze, silver, gold, platinum~~
    - ~~This item will auto-pickup any vault coin~~
    - ~~While having it in your inventory, vault workbenches will read directly from it, allowing you to not insert gold into the specific workstation.~~
- ~~Reworked the Vault Statistic screen~~
    
    - ~~On the overview tab, you can now see a discovery map, showing all the rooms you entered during the vault~~
    - ~~Added a “Score” indicator, which is calculated using most different actions you perform inside a vault.~~
    - ~~New tracking added~~
        - ~~Vendoors Opened~~
        - ~~Gold Spent~~
        - ~~Dungeons Opened (and their rarity)~~
        - ~~Archives Found~~
        - ~~Pylons Used & Broken~~
        - ~~Rooms Discovered (and a breakdown of rarity)~~
        - ~~Soul Shards Collected~~
        - ~~Champions Unalived~~
    - ~~Coin Piles mined now actually reflects the amount of coin piles, rather than the slices of a coin pile.~~
    - ~~Combat Stats is now broken down by Mob Group, rather than individual mobs.~~
        - ~~Individual Mobs can still be tracked by holding shift on a mob group~~
- ~~New Gear Modifier, Heart Frag Chance~~
    
    - ~~When attacking a mob, you have a chance for it to drop a heart fragment which when picked up, will heal you one hit point (scaled with healing efficiency)~~
    - ~~This modifier can roll as a prefix on swords and axes - and can also be crafted~~
- Vault God Charms Overhaul  
    _For a while we have wanted to tie the Gods back to their original lore. We also feel that the old God Charm system was a bit too complex, and lacked impact. The new charm system should solve all of these issues, as charms are now exciting, special and potentially super powerful!_
    
    - Charms can be found in Living Chests and Living Dungeons. It is the rarest item to occur in a Living container, shares rarity with Trinkets.
    - A Charm can roll between Common and Omega
        - The roll determines how many affixes it has (1-4)
    - Each God has a unique set of modifiers, tied to their lore  
        _Example Idona is focused on combat modifiers_
    - The modifiers on charms are unique in that they scale with your current God Reputation, which has a cap of 50 per god (changed from 25)
    - There is a rare chance to roll a God Charm with a **Temporal Modifier**. The temporal modifier will activate randomly inside a vault when the charm is used, for the time displayed on the charm (which scales with reputation)
        - Temporal Modifiers by god
            - Idona: Overpower | Soul Fest | Nova Explosion
            - Tenos: Totemic | Loot Goblin | Door Hunter
            - Velara: Ultimate Regen | Charming | Rock Solid
            - Wendarr: Pylon Hunter | Hunterino | Glued

  

## Other Additions

- Treasure Rooms Buffed
    - Instead of having one treasure pedestal, they generate 3
    - You can only choose one pedestal
- ~~Added Theme Lore~~
    - ~~Augments now display more information about the theme~~
    - ~~Breaks down difficulty and amount of mobs that spawn~~
    - ~~It also displays what “Perk” it has~~
- ~~Added **33** new gear models~~
    - ~~**24** Shield Models~~
        - ~~Scrappy: Trash Lid, Bark Shield, The Plank, Cardboard, Small Scrap Shield~~
        - ~~Common: Tower Shield, Chromatic Buckler, Grizzly, Kitsune~~
        - ~~Rare: Barbed, Black Star, Paladin, Ornate, Gilded~~
        - ~~Epic: Druid, Banner, Ladybug, Winter Guard, Energy, Goat~~
        - ~~Omega: Forcefield, Guardian Angel, Anchor, Vault Crystal~~
    - ~~Research Models~~
        - ~~New Create Sword~~
    - ~~Added 2 new swords~~
        - ~~New Tenos Sword~~
        - ~~Added Sculk Sword~~
    - ~~**4** New Wand~~
        - ~~Common: Chromatic Crook~~
        - ~~Rare: Ghostlights Curse~~
        - ~~Epic: Moon Blight~~
        - ~~Omega: Orb of Chaos~~
    - ~~Updated the Platemail, Spiky Platemail,Reinforced Platemail, and Breastplate (previously Mailbox) - And their dark variations~~
    - ~~Added new secret sword unlock~~
    - ~~Added the princess set (Common armour)~~
- ~~Added new unique item: Frostguards~~
    - ~~Leaves a trail of chilled when you walk~~
    - ~~Can be found in the factory room~~
- New Gamerules!
    - Crystal Recipe Scaling
        - Different from Crystal Mode, this will amplify how fast the recipe itself scales, this is more extreme than crystal mode and can scale even very hard to grind recipes!
            - Slow, Normal, Fast, Extremely Fast
    - Vault XP Sharing
        - This lets you enable sharing xp with other users running your vault. This can be set to have everyone receive the total average of all combined xp, the highest xp earned by a player, or the lowest xp earned by a user. XP will only be distributed when the last player leaves the vault! **This is off by default.**
    - Vault Level Lock
        - Easily change the maximum level a player can currently reach. This will replace the config, however your config and gamerule will sync when updating.
- Added a Transmogrification and Artifact Weight System
    - Artifacts you have not yet discovered are now more 3x more likely to show up instead of one you already have.
    - Gear Models also have the same logic but are 2x more likely to show up if you haven't already discovered it
- ~~Added Vault Sound Options - Allows you to customise the volume of all sounds from the vault mod~~
- ~~Added a Soul Shard counter in the black market~~
- ~~The objective and theme now show up on your screen when you enter a vault~~
- ~~Vault Doll has a 50% chance to drop a Modifier Scroll for each discovery archive you found~~
    - ~~The scroll have the same modifiers that you found in the vault~~
- ~~Augment Items now dye the frame based on the theme series~~
- ~~Cleaned up JEI to remove legacy items~~
- ~~Added, updated, and reworked some commands for admin use~~

  

## Balance Updates

- ~~Reworked mob spawner allocation~~
    - ~~Information on allocation in specific themes can be found on the lore of the theme augments~~
    - ~~Dwellers can now spawn from any spawner in vaults, being separated from assassins.~~
    - ~~Magmatic Piglins no longer spawn as tanks after level 65 in all themes, they now only appear, as assassins, in Nether Vaults at level 100~~
    - ~~Updated the names of all vault mobs to be clearer and consistent~~
- ~~Buffed Blight, increased the duration of the weakness effect to 5-8 seconds (previously 2-5 seconds)~~
- Added perks to most theme series
- Moved trinkets to Gilded chests and buffed their chances  
    _While this change may take some time to get used to, it certainly balances out the chests a bit better, ensuring exciting “uber” items in each chest container_
- When cursing crystals by over-stacking catalysts, curses now only remove 2½ minutes of the vault  
    _The old cursed modifier would add void pools, spawn bedrock blocks randomly, add tnt explosions, hex the mobs and lose time for the player_
- Ability Changes
    - Updated Charm to AD instead of AP  
        _This change will need some more work on the mob AI to feel satisfying, but the direction is correct, to make it an AD Build Support ability_
        - It will affect 1 mob per cast and increases speed
        - Higher duration and new cooldown
    - Update Storm Arrow, Smite and Archon to use AP range (min max)
- ~~Massively reduced health of spiders~~
- ~~Removed crit chance and heavily lower dmg of Crabs~~
- Updated Mystery Egg recipe to not use vault gold
- ~~Marked Wutodie as a legacy item and removed from generating in vault~~
- ~~The Elite Skeleton Rogue now has walk particles (cloud) when being invisible, allowing players to track and avoid its movement~~
- ~~Knowledge brew not saving world data when consuming~~

  

## Changes

- ~~Added new sounds to opening dungeon doors, and breaking dungeon barrels~~
    - ~~Barrels play different sounds based on number of items that drop~~
- ~~Added an RGB color picker to the Accessibility screen~~
    - ~~Usable for both hunter and the new health bar~~
- ~~Changed some of the vault generation calculations to potentially save RAM, making the game run smoother.~~
- ~~Updated the Kitsune, Grizzly, and Donkey Leggings textures as they were all the same~~
    - ~~Updated Kitsune Boots item texture to use boots template~~
    - ~~Updated the Deer Leggings to connect the top~~
- ~~Updated all Spawn Eggs to use Minecraft Spring Drop textures~~
- ~~Changed the Deck tooltips; they are now sorted by total value~~
- ~~Made the Wardrobe default render to solid~~
- ~~Made Vault Workstations fully blast resistant~~

  

## Bug Fixes

- Fixed Card deck modifiers not generating on card decks
- Fixed the over-summoning of baby zombies during the Elite Zombie fight
- Fixed Card Modifiers showing “0” on decks
- Fixed cards inside decks becoming invisible and the deck resetting upon use
- Cooldown GUI accessibility menu item using wrong registered name in options file
- Fixed Inscriptions on Rune Boss rooms causing bedrock filled rooms
- Fixed chaos themes not applying to Rune Boss rooms
- Fixed a server crash with 3rd party mods regarding ability regrets and vault currency
- Fixed bounty asking to discover jewels instead of jewel pouches
- Fixed tool station quest not giving gems on normal worlds
- Fixed water replacing void liquid in vaults
- Fixed Shield Bash never going over 100% damage
- Fixed mobs spawning under the floor in raids
- Fixed time pylons crashing games in vaults with no time limit
- Fixed void stones not working on its last use
- Fixed soul trading screen not closing with inventory keybind
- Fixed infinite timer if joining a vault that was marked as completed
- Fixed Shell: Quill not applying the % damage increase + not applying full damage to the initial mob.
- Fixed Void Liquid working in Herald vaults allowing you to cheese the timer
- Fixed Dash Bullet not being scaled by attack damage buffs
- Fixed Crabs not being affected by Taunt: Fear
- Fixed Chaos Vaults level 80 having overflow of non-wooden chests
- Fixed Catalyst Fragments not dropping in Ascension Vaults
- Fixed Dash Warp exploit allowing you to teleport back to a start room at any given moment
- Fixed Void Crucible themes not displaying when first opening a theme’s blocks
- Fixed the hitbox of the overgrown tank to be shorter and the same as its model height
- Fix rune boss not having the correct completion xp
- Removed random coloured pixels from hardened and ornate chests
- Fixed dylan VIP armor suit model
- Fixed treasure room showing jigsaw block in void crucible
- Added purple terracotta to void crucible misc list
- Removed incorrect part of the laser bridges description
- Fixed crafted vault chests not mining correctly (using step breaking)
- Fixed dolls not working / causes crashes when opened from scavenger or rune boss vaults
- Fixed Poison Cloud not counting towards mob kills for bounties, objectives, etc.
- Fixed Hypothermia causing infinite thorns damage if the mob is not killed
- Card Deck UI should not overlap anymore
- Fix focus being able to roll lucky hit below level 25
- Fixed Shadow Cloak and Slimey having incorrect weights for trinkets
- Give correct amount of xp on bingo completion
- Fixed Raid Mobs getting ethereal
- Disabled ability to put tools in artisan forge as they cannot be modified (and if they did it would break the item)
- Fixed Debagnetizer not being able to be disabled with redstone
- Fix crabs being too fast
- Fixed weakened adding CDR instead of removing it
- Fixed gummy soldier XP amounts
- Fixed lucky hit able to be crafted and rolled on wands
- Fixed boss summons able to be champions
- Fixed some slab and stairs not dropping items
- Add localised languages to vault game rules
- Fixed hatred totem adding ability legendary rolling 1 instead of 2
- Fixed champion room float items obtainable from trial chamber vaults

  

## Disclaimers

- The Cooldown GUI has been reset to its default state (OFF) as we've fixed a big with it

  

## Note about reporting bugs

As always, you can report bugs using `/bug-report` in the Vault Hunters Official Discord  
With this version, if you find a placeholder block in the vault, please shift right click it and paste the information when submitting your bug report.

# VH 3.17.2 | UPDATE 17.2 | HOTFIX

  

## Additions

- Added Temporal Shards
    - Chance to drop in vaults by breaking an unused pylon
    - These drop as unidentified
    - Temporal Shards store a legendary modifier, and when used, will add it to the vault for the time specified
    - Can safely be brought in and out of vaults.
- ~~Added Default Backpack Settings~~
    - ~~You can now load preset memory slots for your backpacks~~
    - ~~These can be done in the settings menu of each backpack when you scroll over the load button~~
    - ~~We have added presets for Scavenger Items, Vault Decor, Vault Gear, Vault Gems, Vault Lootables, and Vault Ores~~
- Added new gamerules:
    - vaultExperience: Determines the XP multiplier in vaults, from poor (0.1x) up to triple (3.0x)
    - This means vaultLoot no longer changes XP, only actual loot
    - vaultTimer: Customise the available time in each vault. The config will still apply on existing servers unless this gamerule is changed
        - If this gamerule is set to 0, there is no limit inside the vault; the timer will be infinite

  

## Changes / Balance Updates

- Made the colour of the themes show as grey on crystal item to help with accessibility
- Upon exiting a vault, the ambient portal noise will no longer play
- Reworked the_vault subcommands
- Add caching to the theme block retriever to improve performance
- Made Vault Guardians immune to all vault modifiers

  

## Bug Fixes

- Fixed spirits being able to appear when dying in a vault with Beginners Grace
- Fixed antique stamps being able to drop from Trial Chamber
- Fixed Experience Modifier still giving XP in Trial Chambers
- Vault Chests Recipe now shows up in JEI and gives correct chest on craft
- Keyring not being looked inside in the spirit cost calculator
- Fix rune bosses having the ability to become champions
- Fix blood horde mobs dropping wrong scavenger items: Purple Essence instead of Green Essence
- Fix elite zombie spawning minions outside of the lab room
- Fixed elite mobs having the potential to show champion icon
- Added language support for prime amplification effect and spirit entity
- Fix laser description typo
- Fixed inscriptions in rune bosses causing full bedrock rooms
- Fixed “No XP” modifier not applying to different gamerules properly
- Void Crucible description in JEI was wrong
- Fixed a bug where nether dimension generated as void if playing sky vaults
- Added tooltip to pylon hunter
- Fix crash with the Patreon Display Settings menu crashing game if not in vault
    - It now only shows this menu if you are in a world/server as the settings are world/server specific
- Fixed ability power on wands being able to roll outside of the gear levels
- Fixed chaos vaults not generating x-mark rooms properly
- Fixed rune boss items rendering wrong in first person and offhand
- Fixe rune pillar being able to take any item
- Fixed raid vault modifier icon showing as missing
- Rune Boss now completes vault when the boss is killed, the doors now longer open, fixing the bug where you can continue to loot with no timer if you leave the room before exiting vault
- Fixed mentors brew and knowledge brew (Updated their texture as well)
- Fix crab speed being speed
- Sky Vaults Quests having wrong reward for tool station

# VH 3.17.1 | UPDATE 17.1 | HOTFIX

  

## Additions

- Added Paradox Blocks, Omega Room Blocks, Challenge Room Blocks, and POI Blocks to the Void Crucible
- Items can be dragged into the Blacklist Filter directly from JEI
- Added the Boss Rune to JEI
- Added the dehammerizer; disables the Hammering jewel on tools in a 64 block range
- Unique crate can now be crafted with a Unique Crate Scroll

  

## Changes / Balance Updates

- Added missing statistic descriptions
- Updated Laser Bridges Description
- ACTUALLY updated the Unique Crate texture
- Applicator and crafting station can now be mined properly with pickaxe

  

## Bug Fixes

- Fixed receiving negative xp from vaults with reduced xp modifiers
- Fixed all capstones and augments being used on crafting when stored in the workbench
- Fixed Skill Altar description mentioning regret orbs instead of gold
- Fixed a bug with Dash Bullet not using increased level modifiers
- Fixed a bug that crashed your game when holding a building gadget
- Fix no loot modifier not stopping soul shards, champion drops, coin loot, and prevents items from dropping from braziers
    - It also now doesn’t generate chests
- Fixed the ability to use Wild Focus on items that have no prefix/suffix slots
- Fixed Braziers before level 50 not using new modifier pools
- Fixed patreons not getting their transmogs and in-game benefits
- Fixed burgers not showing in vendors
- Fixed mending working on vanilla tools in vaults
- Fixed Treasure Doors being counted twice when opened, giving double experience
- Fixed Mana Shield ability activating without required mana
- Fixed Phoenix modifier not spawning a spirit if death is by vault timer
- Fixed Rosethorn Ivy using the wrong item type
- Fixed bugged empty modifier slots showing on low level Epic+ gear
- Fixed issue where some dwellers spawned with very high movement speed
- Fixed gear cooldown activating when relogging whilst in a vault
- Fixed Rune Boss minions not dying when the boss is killed
- Fixed a bug where Void Stones didn't care about their rarity, making both their model and their uses irrelevant to rarity
- Fixed “Diagonal Card” requirements counting itself as a diagonal card.
- Fixed invalid values for rune boss rooms when randomly rolling the objective
- Remove log from failed fetch of patreon tiers
- Fixed Patreon and Dylan’s Set not having the right rarity colour

  

## Known Issues

- Catch-up brew texture is still bugged
- Inscriptions placed on rune boss that are supposed to generate in the first room generate no first room (Full of vault bedrock)

# VH 3.17.0 | UPDATE 17

  

## Disclaimer

- Before installing this update, clear your Vault Forge of any items as the inventory size has changed and items could be lost.
- We have had to remove the **Chipped Mod** due to incompability issues with Sophisticated Backpacks  
    This means that all Chipped blocks in existing worlds will be **DELETED**  
    If you would like to automatically replace blocks on world load, you can download [this mod](https://www.curseforge.com/minecraft/mc-mods/block-swap/files/3819266) and use [these configs](https://api.vaulthunters.gg/static/block_swap.json5) (placed in config/blockswap)

  

## Additions

- Added Treasure Keyring
    - Stores your Treasure Keys
    - You can right click it against a treasure door to open it if you have its matching key
- Boss Objective, featuring 3 unique bosses
    - Use runes, found in chests and from mobs, to define your boss and your reward
    - Boss rooms spawns inside the vault in this objective, and blocks inside cant be altered.
        - The first room in this objective will always be a boss room
- Added Card Deck Modifiers
    - Some card decks can generate modifiers
    - Global Modifiers:
        - “All Blue cards will be 25% more efficient”
        - Every slot in the deck will be affected by the modifier
    - Slot Modifiers:
        - “All Green cards in selected slots will be 32% more efficient”
        - Will make a specific slot affected by the modifier
- Added the Unique Crate Block
    - These can spawn in the factory or village in specific locations and will give you a unique gear item when broken
- Added the Unique Codex Item
    - Browse through the uniques which you can obtain in vaults
- Added a new unique gear quest to help understand how uniques are implemented
- ~~Added multiple new Unique models and Unique Effects, you can read more in the Unique Codex~~
- ~~6 New unique items~~
- ~~New Sword and Axe Transmogs!~~
- ~~_New Patreon Sword Model_~~
- ~~Pirate Themes have got new crabs and Pirate Tank~~
- ~~Patreon display names~~
    - ~~You gain an emblem as a prefix to your name, and a colour~~
    - ~~Settings are available from the Vault Accessibilities Options~~
- Added Void Crucible
    - This replaces the Vault Charm Controller
    - Inside the crucible, you can craft void stones, view the blocks that spawn in a vault, and blacklist blocks to not be voided on pickup
        - You can also right click items in the theme viewer to add or remove to the blacklist
- Added New Capstones
    - Merchant Capstone - Adds the vendoor_hunt modifier
        - Can be purchased in Vendoors after level 65
    - Peaceful Capstone - Adds no_spawners modifier
        - Super rare! Found in boss crates after level 65
    - Pylon Capstone - Adds pylon_hunt modifier
        - Can be purchased in Vendoors after level 65
- Add the Trial Chamber Rock
    - In this vault, you receive no Vault XP, chests have no loot, you receive no reward crate, and you have -100% durability damage reduction
    - This can be useful for testing builds as death also causes no penalty (All items are restored)
- Added Random Affix jewel crafting
    - This hopefully fixes the gemstone issues we have seen in U16, as we have increased the rate a player gets gemstones, and made them more useful with this mechanic. This should also allow early game to make better tools by utilising these jewels - while not ever competing with found jewels*
    - Will pick a random affix thats available for the level of craft
    - Will always be size 20 (found jewels are size 10)
- ~~Added the Vault Crab~~
    - ~~This entity replaces the ecologics:coconut_crab entity~~
- ~~Added the Vault Wraith~~
    - ~~This entity replaces the quark:wraith entity~~
- ~~Added the Supporters screen which displays all the patreon supporters and the perks that you can get if you become a member~~
    - ~~Accessible from the Title Screen~~
    - ~~Also displays our amazing patreon supporters~~!
- Added the Trinket Forge
    - Crafting trinkets has been removed from the Vault Forge
    - This includes a new quest which can be unlocked after “Trinkets”
- ~~Added 3 new trinkets:~~
    - ~~Red Trinket: Healing Salve, +50% Healing Efficiency~~
    - ~~Blue Trinket: Shadow Cloak, Become invisible to mobs while not making noises, if a noise is made the cloak will reactivate after 30 seconds.~~
        - ~~This excludes champions, elites, guardians, and bosses~~
        - ~~Noises include interacting with blocks, or using your abilities~~
    - ~~Blue Trinket: Slimey - Bounces the player by 80% of their original velocity, removes fall damage - Holding shift does not apply these effects~~
- Add the Mentor’s Brew and Knowledge Brew
    - The Mentor’s Brew can be crafted, and will hold the level of the player (level from crafting point)
        - When drunk by another player, it will increase their level to the level of the brew
        - You can only use it if the level of the brew is higher than the level of the player
    - The Knowledge Brew can be crafted, and will hold the researches that the player who crafted it has when crafted
        - When drunk by another player, it will unlock the researches that the player drinking does not have unlocked.
- ~~Added recipes for Vault Stone Slabs and Stairs~~
- ~~Added 5 new inscriptions, all are craftable~~
    - ~~Chromatic Caves, adds the chromatic caves room to the vault~~
    - ~~The Farm, adds the farm room from Raw vaults to any vault~~
    - ~~Emerald Caves, adds a new room filled with Emerald Ores~~
    - ~~Raid Inscription, adds the Raid room~~
    - ~~Laboratory Inscription, adds the Lab room~~

  

## Changes / Balance Updates

- ~~Changed Slimey Trinket to be named Sticky~~
    - ~~Updated climbing behaviour to require the player to jump towards a wall to start the climb~~
    - ~~Removed the kinetic damage perk~~
- New Regret System:
    - Instead of using Regret Orb and Regret points, to regret abilities and talents, you now need Vault Gold.
    - The UI will automatically calculate Vault Gold based on any vault currency (bronze, silver, gold, platinum) from your inventory and remove them.
    - You will still get your skill points back
    - This includes the Skill Altar changing to need Vault Gold
- ~~Updated the Crystal Workbench Model~~
- ~~Magnets have been moved to Gilded Chests~~
- ~~Gemstone chance raised from 5% to 33% when scrapping a jewel~~
- ~~The Overgrown Tank now shoots fireballs at the player~~
- ~~Removed the ability to place vault barrels or shulker boxes inside vault barrels~~
- ~~Range and Velocity has been changed to “Pickup Range” and “Pull Speed” for an easier understanding~~
- ~~Changed Lucky Momentum to only be available from level 25~~
- Scavenger Items are now removed when you exit a vault
- ~~Quest Rewards Updated~~
    - ~~Tool station changed from gemstone to chromatic iron ingot~~
    - ~~Jewel crafting changed from 64 silver scrap to 512 silver scrap and 8 gemstones~~
- ~~Removed durability penalty when dying in Casual mode~~
- ~~Change Magnet attribute names:~~
    - ~~“Range” → “Pickup Range”~~
    - ~~“Velocity” → “Pull Speed”~~
- ~~Increased gemstone output to 33% (from 5%), and added crafting random jewel to the jewel crafting table~~
- Vaulterite Ingot recipe changed from 6 scrap and 3 painite to 4 scrap and 2 painite
- ~~Tier 2 Vault Dwellers had their movement speed, health and damage slightly reduced~~
- Burgers have been completely overhauled as burger parts are no longer findable
    - All Experience has been massively increased from burgers, this also applies to old burgers in your world, so be careful of using them
    - Burgers now sold in Black Market scales with level properly
    - Burgers now sold in Vendoors scales with level properly
- ~~Shield Bash buffed:~~
    - ~~Damage scaling starts at 60% (prev 20%) and increases with 20% per level in ability~~
    - ~~Mana cost starts at 18 (prev 30) and scales with +1 per level, instead of being static~~
    - ~~The distance was increased from 2 to 3, this can still be further enhanced with the area of effect attribute~~
- ~~Battle Cry: Lucky Strike now scales positively past level 4 by increasing radius, max stacks and stack duration  ~~
    ~~_There was an issue previously where it would scale stacks used, but it already had 100% lucky hit chance at level 4, so over levels was, not just useless, but worse - this has now been fixed._~~
- ~~Battle Cry & Spectral Strike now scales better after level 4, increasing its radius, max stacks and stack duration~~
- ~~Inscriptions now recycle to 2-4 pieces (previously 8-20)~~
    - ~~We have adjusted the cost of certain inscriptions to better balance their power~~
- **Dungeon Adjustments**  
    _Dungeons started receiving some changes in Update 16 to make sure they differed themselves from regular POI’s, but it was never finished and Dungeons ended up feeling a bit out of place - because of this, we finalised the work that was started._
    - Dungeon Barrels contain 1 item per difficulty stack of the dungeon
        - These items are high tier (epic+ pool) items, for example Gear, Trinkets, High end focus’, Inscriptions, Jewel Pouches etc
    - The difficulty selector chance was changed, favouring less difficult dungeons:
        - Normal Chance: From 20% to 40%
        - Hard Chance: From 20% to 32%
        - Challenging Chance: From 20% to 16%
        - Extreme Chance: From 20% to 8%
        - Impossible Chance: From 20% to 4%
    - Wooden Barrel dungeons was completely removed

  

## Mod Changes

- Updated Create
- Updated CraftTweaker & CreateTweaker
- Updated Sophisticated Backpacks
- Removed Chipped - This had compatibility issues with the pack, removing it will create better performance
- Added Builder’s Delight
- Added The Entangled Mod
- Updated Trashcans mod

  

## Bug Fixes

- Performance Optimisations with blacklists, gear talents, and card decks
- Allow axe as a weapon on animal pens
- Vault Integrations: Altar Interface now accepts any type of vault rock
- Fixed accessibility of Augment tooltip colour so that the theme name is readable
- Fixed bug where raid mobs could be affected by ethereal meaning you can't complete raids
- Fixed Collection Quests in Sky Vaults not registering
- Fixed totem blocks not being able to be destroyed in Raid Vaults
- Fix chest names not correctly being selected on barrels or placed chests
- Vault Fireball using an unscaled radius
- Fixed Grizzly armor model not dying the correct areas
- Fix trinkets and charms to be shift clickable into curio slots
- Fixed a bug that stopped redstone ores from being destroyed in raw vaults even though they generated as ores
- Fixed Champion Armor game crash with Vault Particles in Create Mod
- Fixed a bug that made the buttons on the main menu render without a proper border
- Fixed a bug where Gilded chests before level 50 had the wrong Epic chance, causing the chance of them being epic to be extremely low
- Fixed a bug where Shield Bash didn’t display the radius/distance
- Fix placed vault chests not dropping the chest when broken
- Fixed a bug that made Frozen orb not roll an implicit unless it was level 90-94
- Fixed a bug that made it possible for Magma Cubes, Blood Silverfish and Blood Slimes to become champions
- Fixed Fireball Damage Not Registering for Flawless Tasks in Bingo
- Fixed Vault Dolls applying too much durability damage
- Fix the final boss not being able to be completed as chests wouldn't generate the correct items


**Wold's 18 Changelog**:

**Forge**: Updated to 40.2.21

**New Mod**: Modded Item Borders

**New Mod**: Gateways to Eternity

**New Mod**: MIFA

**New Mod**: Regions Unexplored

**Mod Update**: Wold's Vaults Official Mod

**Mod Update**: VaultMapper

**Mod Update**: Vhat Can I Roll

**Mod Update**: QOL Hunters

**Mod Update**: Hostile Neural Networks

**Mod Update**: Placebo

**Mod Update**: Vault Hunters Official Mod

**Mod Update**: Vault Hunters API

**Mod Removal**: Torohealth Damage Indicators

**Vault Hunters**: Merged in relevant Update 18 changes. See their changelog for those.

**New Item**: Vault Maps

Vault Maps are a brand new kind of Vault Gear, but not one that you equip! Vault Maps are your gateway to running "Mapped Vaults", that can have new rooms, new loot tables for chests, harder mobs, and other tweaks! Vault Maps roll modifiers just like other gear, but are for defining what sort of modifiers and stats your vault will have. It's the only way to obtain some of the new items in this update!

You need a level 100 Vault Crystal with the "Greedy" vault modifier to combine with a Vault Map in an anvil. When you combine the map with the crystal, it will set the Objective, Theme, and Difficulty to the ones defined on the map's implicits, and it will add all of the modifiers from your map to the crystal such as the Item Quantity, Item Rarity, Copiously, and many other modifications that can be made to your vault.

Maps pull from a new set of themes with harder mobs and new rooms and vendor rooms.

You will get your first Map when defeating the Herald. Future ones will need crafted or found very rarely by looting in Mapped Vaults, or you could beat the Herald again.

When combining a Map with a crystal in an anvil, if any modifier slots are empty, it will reduce the value of all modifiers by 25%, to encourage you to fill your maps modifier slots completely.

Maps come in different "Tiers" such as Tier 0, Tier 1, Tier 2, etc. that have higher values for modifiers and may have modifiers that lower tiers do not.

**New Item**: Vault Etchings

They are back! You can find Vault Etchings in Mapped Vaults only in a special Vendor Room. You can also craft random etchings in the Vault Forge once you defeat the Herald.

Etchings apply an armor set effect when all of your armor pieces have the same etching. You can see all of the etchings and their effect in Vhat Can I Roll!

**Crystal Workbench**: When combining inscriptions, god tokens, and catalysts to a crystal, you can no longer go over the capacity of a Vault Crystal.

**New Objective**: Corrupted, you can find out how to get it and what's in there on your own. :) (thanks a1qs)

**New Tool Tier**: Nullite, you'll need to access the Corrupted objective in order to craft them. (thank you again a1qs)

~~**New Attribute**: + Talent Levels~~

~~**New Attribute**: Divine, a new rare base attribute for all vault gear pieces that protects a Vault Gear piece from being corrupted. When a Vorpal Focus is used on a gear piece, it will prevent the gear from being corrupted and then has a 50% chance that the gear piece loses its Divine attribute.
~~
**~~New Attribute**: Fleet-Footed, a new implcit on high level Leggings that increases your speed when jumping. Pairs nicely with a certain overpowered item that ends in Charm...~~

~~**New Attribute**: Multi-Jump, a new implicit on high level boots that grants you additional jumps, similar to Prismatic Feather.~~

~~**New Attribute**: Soul Leech, adds a flat level of hearts you will restore when killing a mob. Rolls on Mythic Chestplates.~~

~~**New Attribute**: Dodge Chance, adds a percentage chance to completely nullify damage from a hit. Can roll on Chestplates at high levels, and is an unusual on other gear pieces.~~

~~**New Attribute**: Echoing Chance, adds a percentage chance to do another hit against a target.~~

~~**New Attribute**: Echoing Damage, boosts the damage done by echoed hits.~~

~~**New Attribute**: Effect Cloud Chance, boosts the chances that effect clouds proc. (additively)~~

~~**Player Stat Menu**: Missing stats and new stats have been added to the menu.~~

~~**Rangs**: Added a new Brick transmog for rangs.~~

~~**Leggings**: Can now roll Movement Speed as an implicit like Boots can.~~

**Trinkets**: Trinkets now come in 3 colors instead of 2: Red, Blue, and Green.

Red Trinkets tend to be damage/stat buffs, things that empower the player directly.

Green Trinkets tend to be utility or buff your looting stats/abilities.

Blue Trinkets tend to improve or modify your movement, or could be associated with "movement" in some way.

All trinkets have been updated to correspond to one of these colors.

**New Item**: Trinket Pouches

To wear any trinket, you will now be required to wear a Trinket Pouch. You will receive one of these from a quest whenever you first obtain a Trinket. Trinket Pouches define how many and what kind of trinkets you can wear. By default you can only obtain Beginner Trinket Pouches that can hold 2 kinds of trinkets.

Later on, you can unlock recipes for improved Trinket Pouches that can hold 3 trinkets, including multiple of the same type of trinket (2 red, 1 green or 2 blue and 1 red, etc.).

When you un-equip a Trinket Pouch, it will store any trinkets you are wearing inside, saving some storage space and becoming a convenient way of swapping between entire different sets of trinkets.

When you equip a Trinket Pouch you will gain the trinket slots it provides and any stored trinkets will be put into their correct slot.

~~**New Trinket**: Chromatic Diffuser, a Red Trinket that adds 10% additional chance to proc effect clouds.~~

~~**New Trinket**: Swift Amulet, a Blue Trinket that adds 15% Dodge Chance.~~

**New Item**: Recipe Blueprint, these unlock a recipe in blocks such as the Weaving Station or other workstations.

**New Vault Gear Rarity**: Mythic

Mythic is a brand new Vault Gear Rarity that stands above all others. Mythic level gear can only be obtained from Mapped Vaults. Mythic gear pieces have _much_ greater values for their modifiers and can roll modifiers that lower rarity gear pieces don't have. They are not craftable and cannot be made by using a Pyretic focus on an Omega gear piece.

~~**New Etching**: Ingenium - Adds +1 to all talent levels.~~

~~**Shop Pedestals**: Now come in new varieties with specific loot pools! Sometimes the standard vendor pedestals in a vendor room will be replaced with these new ones.~~

~~Blacksmith - Specializes in vault gear, contains legendary vault gear, all gear pieces are Rare+, sells a variety of foci and gear modification items.~~

~~God - Specializes in items of the gods, Vault God Charms, God Offerings, God Tokens, God theme augments, etc.~~

~~Card - Specializes in Booster Packs and Card Decks. Only found in the new Card Shop vendor room.~~

~~Rare - Contains a variety of items but includes rarer items that are not normally sold on normal Vendor Pedestals.~~

~~Omega - Appears in Mapped Vaults only, same as Rare but includes even more additional items that don't appear on Rare pedestals.~~

~~Etching - Appears in Mapped Vaults only in the Etching Vendor Room. Includes Vault Etchings, Omega+ vault gear that comes pre-etched.~~

~~Corrupted implicits on Armor gear pieces and Magnets can now roll + Talent levels as well as a prefix/suffix on Mythic gear pieces.~~

~~**New Vendor Rooms**: A few new vendor rooms have been added (thank you DrunkSparrow), here is the list:~~

~~Card Shop - Only contains Card Vendor Pedestals.~~

~~Blacksmith Vendor Rooms - Two new vendor rooms that both contain Blacksmith Vendor Pedestals.~~

**New Item**: Greedy Vault Rock. Use on a Vault Altar to start creating a "Greedy" vault crystal, the only kind of crystal that can be combined with Vault Maps. You can craft these in the Catalyst Infusion Table after you defeat the Herald.

**Greed Vault Altar Recipes**: When you use a Greedy Vault Rock on an altar, it will ask for items found in Vaults instead of vanilla Minecraft items! The Vault Altar will display some particles to indicate it is making a Greedy vault crystal. When the altar is in this state, Altar Recatalyzer will cancel a recipe instead of rerolling it.

**Herald**: When completing the Herald, you will now receive a completion crate. This crate always contains a Tier 0 Vault Map.

**New Room**: Gateway Room

Found in Mapped Vaults only. These are a new room, sort of like a Raid room that contains a Gateway Channeling Beacon.

You can either activate the Gateway Channeling beacon to open a random "Gateway" and defeat the waves of mobs for rewards, or you can insert your own Gateway Pearl into the beacon to summon a particular gateway.

After doing either action, the beacon will become inactive and cannot be used further.

~~**New Room**: Aquarium Room~~

~~New Challenge room found at all levels. This is a room submerged in water that has some fishy foes to fight for many Gilded Chest and Coins and some Ores!~~

~~**New Room**: Labyrinth Room~~

~~New Challenge room found in Mapped Vaults or Inscription. This is a challenging multi-level room that gets harder as you go, has chests of all types and some other goodies!~~

**Treasure Rooms**: Can now either be the current treasure room that is a single treasure chest or pedestal or a new treasure room with a choice of 3 pedestals.

~~**Expertise Rework**: The Marketer Expertise no longer grants re-rolls for the Black Market. Instead, the Black Market can now have up to 6 different slots for items to purchase and the expertise unlocks these additional slots.~~

**Black Market Rework**: As mentioned above, can now have up to 6 slots (4 standard, 2 omega) for items to purchase. There is also a new slot for adding Soul Ichor, used to reroll the Black Market like you could previously do with the expertise.

**New Item**: Soul Ichor, used for rerolling the Black Market. Can rarely find in Living Strongboxes or can craft using a Vault Infuser.

~~**Expertise Rework**: Jeweler no longer grants access to Unusual, Corrupted, and Greater jewels, instead it grants access to crafting jewels with a random modifier. Cost was reduced to 1 expertise point.~~

~~**Jewel Crafting Station**: Crafting jewels with a random attribute is now locked behind the Jeweler expertise.~~

~~**Jewels**: When opening jewel pouches, jewels can now randomly be unusual or corrupted like would happen previously with the expertise.~~

~~**Expertise Rework**: Angel is no longer an Expertise. Instead, it is a Research that replaces the Vault Compass research.~~

~~**Research Removal**: Vault Compass. No longer requires any unlock, as it has limited usage with VaultMapper included.~~

~~**New Expertise**: Surprise Favors - Gives you a random chance to add a random positive modifier to your vault when entering. (This is to replace the removal of the Angel expertise)~~

**Wallet**: When crafting at workstations, money can now be pulled from your Wallet. In general, the functionality should be the same as the new Coin Pouch from VH 18.

**Coin Pouch**: Disabled recipe and added tooltip noting you should use the wallet.

~~**Ender Anchor**: Now reduces durability damage done to magnets by 50%.~~

~~**Card Deck**: New Card Deck - The Wold Deck. You can find it on Dungeon Pedestals.~~

~~**Zephyr Charm**: Is now crafted in the Vault Forge with a new recipe, must unlock the recipe first by using a Recipe Blueprint for the Zephyr Charm. It also now takes up a Blue Trinket slot instead of fitting into any Curio slot, it is still unbreakable (no uses).~~

~~**Spirit Extractor**: Zephyr charm now adds to spirit cost.~~

~~**Inscriptions**: Added Trove Room inscription, only obtainable from Inscription Boxes.~~

~~**Inscriptions**: Added Gateway Room inscription, not obtainable currently.~~

**New Research Group**: Workstations

**New Research**: Mod Box Tinkering

Let's you craft the Mod Box Workstation that let's you craft "Targeted Mod Boxes" that only drop items from a particular mod. You must have the mod unlocked in order to craft the corresponding mod box.

**New Research**: Augment Crafting - Augment Assembly Pedestal is now locked behind this.

~~**Research Group Move**: Moved Soul Harvester and Junk Management to the new Workstations research group.~~

**God Altars and Affinity**: Unlike the new VH 18 update, affinity for each god is still utilized. You will still need affinity with a god to receive reputation from them! God Altars no longer add a curse modifier when failing them, instead one of the following will happen:

You will lose one reputation with that god.

You will take 50% of your health in damage.

You will become slower and mine slower for a minute.

They will simply be disappointed in you (nothing happens)

If you affinity with a god is high, you may have nothing happen you fail an altar at all! (but no reward still).

~~**New Expertise**: Blessed - Since the Divine expertise has been altered, this is a new affinity that adds god affinity like the old one.~~

**New Item**: God Token - Technically not a new item, but the old charms have been renamed and retextured. Combine them with Vault Crystals to add god affinity to them.

~~**New Item**: God Offering - adds 1 reputation of the god they are for when used.~~

~~**Comet Observatory**: Vendor Pedestals in this room now have a high chance of being God Vendor Pedestals.~~

~~**God Altars**: The drops from God Altars when completing them have been modified.~~

~~**New Expertise**: Pylon Pilferer - Increases the chance of Temporal Shards dropping from Pylons.~~

~~**New Expertise**: Negotiator - Let's you reroll vendor pedestals, each level reduces the cooldown in between being able to do this. Note: Each pedestal can only be rerolled once.~~

~~**Talent GUI**: Now displays your total talent level (base + bonus levels) when looking at a talent. There is also a visual indicator that talents have increased levels with a little icon displayed on the talent.~~

~~**Workstations**: Vault workstations like the Trinket Forge, Vault Forge, etc. now filter their menu using JEI.~~

**New Block**: Weaving Station, used for crafting Trinket Pouches.

**New Block**: Vault Infuser, used for crafting new ingredients and items.

**New Item**: Unidentified Gateway Pearl, drops a random Gateway Pearl when used.

~~**New Item**: Chroma Core, a new ingredient used in recipes.~~

~~**New Item**: Prismatic Fiber, a new ingredient used in recipes.~~

~~**New Item**: Pogominium Ingot, a new ingredient used in recipes.~~

**~~New Item**: Infused Driftwood, a new ingredient used in recipes.~~

**New Item**: Blazing Focus, unfreezes all frozen modifiers on a gear piece.

**New Item**: Suspension Focus, freezes one of the following on a gear piece: Legendary, Corrupted, Greater, or Unusual modifiers.

~~**Recipe Rework**: A number of recipes have been modified to utilize new ingredients or have been rebalanced.~~

~~**JEI**: Cleaned up a number of items that are no longer used in Wold's or The Vault.~~

~~**Mana Shield**: Now lasts significantly longer and has some other value tweaks.~~

~~**Extra Tags**: Updated script to account for some new loot additions and removals.~~

~~**Aurora Scissors**: Reduced the amount of AP Scaling Damage.~~

~~**Loot Sack**: Can now roll Effect Cloud On-Hit modifiers.~~

**Brutal Bosses**: Enigma Eggs are now found in the completion crate instead of dropping from boss kills.

~~**Shadow Cloak**: Can now only be seen by Bosses and Elites when cloaked.~~

~~**Hostile Neural Networks**: You can now craft the base model for a mob.~~

~~**FTB Quests**: Added new quests going over some of the new content and items.~~

~~**VH Quest Book**: Added new Level 75 quest that gives you a Recipe Blueprint for the Standard Trinket Pouch.~~

~~**Thermal Expansion**: You can no longer compact fruit. This is done in the Vault Infuser now.~~

~~**New Unique**: Shattering Jewel, adds Breaching to a Vault Tool that makes all chests and coin piles mine like Wooden Chests (no step breaking).~~

~~**Vault Modifiers**: Emojis no longer display on Vault Modifiers.~~

~~**Temporal Cards**: Now have an increased amount of time they grant by base.~~

~~**Vendor Omega Rooms**: Now show up again rarely as an Omega room.~~

~~**Theme Tooltips**: The old theme tooltips have been removed and replaced with the new U18 functionality.~~

~~**Regions Unexplored**: Blocks found in these biomes have been integrated into the Vault Altar pool and the biome weights tuned to play well with Terralith. (thanks JGrade!)~~

~~**MIFA**: New addon tiers have been added to Industrial Foregoing.~~

~~**Fix**: Fixed the Terracotta blocks from Chipped not being mineable with any tool (thanks Greedy)~~

~~**Fix**: Fixed the new trinkets having a much higher weight than other trinkets.~~

**Fix**: Fixed Tom's Storage Terminal using incorrect Wooden Chest for recipe.

**Fix**: Crabs are no longer speed.

**Fix**: Treasure Goggles no longer appear as Mining Headlamp visually.

**Fix**: Fixed a few recipes that had issues stopping them from showing up.

**Fix**: Removed regret orbs from bounties.

**Fix**: Added some missing items to the Vault Diffuser.

**Fix**: Fixed Aurora Scissors behing called Grass Sword in the Unique Codex.

**Fix**: Fixed some Plushie modifiers not having their legendary values configured.

**Fix**: Fixed the Cherry Grove theme.

**Fix**: Removed (Legacy) from all items that are still used in Wold's.

**Fix**: Livingwood Logs are used in Vault Altar now instead of Livingwood.

**Fix**: Resilient Focus can now reroll durability on Tridents.

**Fix**: You can no longer craft Insanium items without having Mystical Agriculture unlocked.

**Fix**: You can no longer use Empowered Chaotic Focus on unusual modifiers.

**Fix**: Farming for Blockheads fertilizer was obtainable but hidden from JEI.

**Fix**: Gaia Spirit seeds were unable to be used in Botany Pots. (thanks JGrade)

And your favorite(?) part of the patch notes, comments from your lovely Wolf:

I am sorry for the long delay for this release! I wanted to finally finish(?) up and release changes I had been working on for a while previously. I had to cut down a lot from my originally ambitious ideas just so I could get... something out, but I think the skeleton/framework for what I wanted to accomplish is here at least... I'd like to add on a bit more if I have the time, but hopefully what is here is something fun to mess around with.

There will be bugs. Horribly, nasty, giant big crawling bugs. Do open a Github issue if you see any of them slithering around. Thanks to some people playing the pre-release ahead of time, was able to catch a few issues, thanks for all the folks who did that!

This is probably one of the biggest updates in Wold's history, I am taking a well deserved break from any large content additions moving forward. I would love to see members of the community come and contribute to what is here if they want, I know some already have some things they are working on and want to make it in. I will still be tackling bugs, especially any major issues that crop up, and keeping up with further VH development. I would be happy to talk and help with anything you are interested in contributing. I would also recommend joining the Wold's Vaults discord if you haven't already, can also pitch in on our new project, Wanderers of the Rift! It's a new roguelike modpack in development that is really starting to shape up! We'd love to have your help if you have any game design talent, coding experience, or are talented at builds or art. I am very grateful to the incredible community team that has shaped up around the project that I have been able to focus chipping away at Wold's while it continues to brew in the background, they are doing amazing work.

The official Wold's Vaults servers will be undergoing a reset soon, please join the Passion Project gaming servers for any further info on that. There will be an announcement about it soon.

I am still very grateful to the community that has spun up around this pack, it's the only thing that keeps me wanting to develop for this project at all, so I am glad for your continued interest and gratitude. It has been a lot of fun over the past year to work on this with you all.

Thank you, and enjoy Wold's Vaults!

**IMPORTANT NOTE FOR ALL SERVER HOSTS**

The Forge version has been updated in this release to version 40.2.21. Make sure you update your server accordingly.
WOLD UPDATE 17.5
**Vault Mobs Rebalance**: Rebalanced most mobs. (thanks drag0no/Rin!)

  

**Mystery Egg**: Now has a new gold-less recipe.

  

~~**Dungeon Pedstal**: The card decks that used to be in dungeon loot can now appear on the pedestal.~~

  

~~**Living Loot**: It was intended that burger parts remained in living in Wold's for the time being but they were actually accidentally removed! Properly brings back old loot tables.~~

  

~~**Vault Hunters**: Merged in relevant changes from 17.2~~

  

~~**Brutal Bosses**: Now uses a new Tier 4 crate. (Note: All new objectives still only give their proper loot after level 50!)~~

  

~~**Dungeons**: Wooden dungeons are gone once again, replaced with old Coin Dungeons instead.~~

  

~~**Tags**: Vaultarang and Void Stone are now tagged as Vault Gear.~~

  

~~**Gear Rarity Colors**: Gear rarity colors are now customizable. Go into your config/the_vault folder and find the new gear_rarity_color_config file. You can use the names of standard Minecraft colors (yellow, aqua, gray, etc. - [https://minecraft.fandom.com/wiki/Formatting_codes#Color_codes](https://www.curseforge.com/linkout?remoteUrl=https%253a%252f%252fminecraft.fandom.com%252fwiki%252fFormatting_codes%2523Color_codes)) or hexadeciaml colors. By default the colors are the same as vanilla Vault Hunters. Note that if you change this setting in-game, Item Borders requires a full game restart to display the correct color border.~~

  

~~**Fix**: Magnets no longer take durability when an item has been voided (by Void Upgrade from Sophisticated Backpacks for example).~~

  
~~**Magnets**: Picking up Soul Shards no longer counts against durability.~~

  

~~**Focus**: New Omega transmog.~~

  

~~**Mod Update**: Vault Hunters Official Mod~~

  

**Mod Update**: Wold's Vaults Official Mod

  

**Mod Update**: Unobtainium

  

**Mod Update**: Vault Hunters API

  

~~For those curious about the talent overleveling, I have not had a ton of time for new content this week yet, but hoping to take a look at it this week among some other things. :)~~

WOLD UPDATE 17
**New Mod**: Added Smart Research Cost Mod

**New Mod**: Laser Bridges (not a research)

**Mod Update**: Vault Autocrafting Fix

**Mod Update**: Vault Hunters Official Mod

**Mod Update**: Vault Integrations

**Mod Update**: Create

**Mod Update**: Unobtainium

**Mod Update**: Vault Filters

**Mod Update**: VaultFaster

**Mod Update**: CraftTweaker

**Mod Update**: Rechiseled: Create

**Mod Update**: Create Enchantment Industry

**Mod Update**: Wold's Vaults Official Mod

**Removed Mod**: Vault Hunter's Better Junk Controller

**Fix**: Fixed Vendoor Hunter description typo.

**Fix**: Added fix for soul shard exploit using Whirlisprigs. **Fix**: Removed duplicate Invar Seeds recipe.

**Fix**: Fixed Big Backpacks not unlocking Scout transmog.

**Fix**: Removed duplicate Augment Assembly Table quest.

**Fix**: Fixed cursed/harder objective bounties being weighed much higher than they should be.

**Automatic Genius**: Mekanism Assembler no longer requires Automatic Genius.

**Fix**: Disabled quick casting Ars spells in vault.

**Champions**: No longer drop plushies and loot sacks before level 50.

**Inscription and Inscription Box**: Added new Inscriptions to box and fixed the model ids of old inscriptions. Important Note: Some inscriptions from previous update will have the incorrect model as their id now overlaps with the new inscriptions from Update 17.

**Fix**: Fixed Ivy unique dropping as a Sword instead of a shield.

**Fix**: Some mobs were missing from Elixir/Enchanted Elixir config.

**Extra Tags**: Updated script to reflect loot table changes.

**Fix**: Fixed Raid room inscriptions in Inscription Box being invalid.

**Seal of the Warrior**: Marked as Legacy and recipe removed. Will now set objective to Rune Boss.

**Void Crucible**: Added Wold's added themes to theme list.

**Unique Codex**: Added Wold's uniques to codex, note that non-vanilla gear will show up under offhand category currently.

**Fix**: Fixed some modifiers on Plushies having way higher weighting compared to some others.

**Occultism**: Added spirit fire recipe for Iesnium (intended for Sky Vaults usage)

**Transmogs**: Added several new transmogs, huge shoutout to Lun from Tinker's Tavern!

**Battlestaff Models**: Are now all 3D Models, big shout out to Lun again!!

**Trident Models**: Are now all 3D models, again, one last big shout out to Lun!!!

**Compatability**: Merged in Update 17 configs with some minor changes. (will be noted in these notes below)

**Transmogs**: Patreon/Developer/Dylan transmogs are enabled as Omega transmogs.

**Living Chest**: Still contains burger parts, but burger XP has been reduced. Will probably change in the future.

**QOL Hunters**: Patched issue that prevents regretting abilities with the new gold cost change.

**Magnet Modifiers**: Velocity and Range names remain the same instead of being Pull Speed and Pickup Range.

**Supporters Button**: Removed from the main menu.

Note: Here be dragons, first releases like this always tend to have some issues. Please open a Github issue if you come across anything.

Since it's become a bit of a regular thing to have a developer's note here at the bottom... might as well keep it up. Once again, thank you for your interest and support in the project, its the only reason I have bothered even keeping this going at all in the wake of all this mess and drama. I really appreciate all the kind words and appreciation.

This update is mostly fixes and the updates for compatability with Update 17, I have some changes and additions I'd still like to do when I have the time for them. Please open suggestions in the Wold's Vaults discord like usual if you have any suggestions. I unfortunately don't have the time that I used to, to work on this as much, but I still want to keep it going while there is still interest in it!

I'd like to clarify some things while I am here as well. If you have no interest in supporting iskall at all, I must inform you that this will still get them downloads on their mods and provide some revenue, I don't want any one to be misinformed on this. If you don't want to support him at all, I'd recommend you find a different pack or game to play, I haven't gotten to try it out myself yet, but Craft to Exile 2 should be worth checking out! This project is also in no way meant to replace Vault Hunters, it's a perfectly valid and good project, but could certainly use a better person at the helm of it, but unfortunately this will never happen. This project would obviously not exist at all without it so kudos and shoutout for the ex-developers and current developers who have put it together.

Yes, I know this is being released on April Fools... but it's no joke! :D

Note: For those of you who want to convert over from VH3 note that the pack does _not_ contain Builder's Delight at this time.