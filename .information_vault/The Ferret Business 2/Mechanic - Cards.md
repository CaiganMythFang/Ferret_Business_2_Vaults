### NOTES
Cards are assembled in [[booster_packs.json]] when a booster is opened.

#### Card Graphic Editing Notes
Going for Purple + White for the "changed" aesthetic, while 'glitching' stuff should use the black/purple broken texture theme.

For White, use the Image > Adjust > Black/White > whitecard preset
For Purple, use the Image > Adjust > Hue/Sat > purple_card preset
### OVERALL CONFIGS
card/[[file structure/config/the_vault/card/modifiers.json|modifiers.json]]
Controls the list of modifiers, and their weights, for the Card system.

### SPECIFIC CONFIGS
#### Card Essence Extractor
[[card_essence_extractor.json]]
Controls the amount of Card Essence the Extractor breaks cards down into.

#### Booster Packs
card/[[booster_packs.json]]
Controls what Booster Packs are available and what cards can drop from each Booster.

#### Conditions
card/[[conditions.json]]
Controls the Conditions cards can have, such as "3 adjacent blue cards" or "for every foil" etc.

#### Decks
card/[[decks.json]]
Controls the available Decks and their layouts.

#### Scaling
card/[[scalers.json]]
Controls the scaling of certain card types (Temporal)

#### Tasks
card/[[tasks.json]]
Controls the tasks that can show up on cards (loot x chests, etc)