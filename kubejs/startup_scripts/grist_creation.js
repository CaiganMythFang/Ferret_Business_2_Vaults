onEvent("item.registry", event => {
    event.create('tfb2:grist_candy_bag')
    event.create('kubejs:chroma_gum_drop').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:carbs_marshmallow').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:scrappy_lolly').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:vitamin_v_jellybean').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:rainbownium_twist_candy').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:ego_chocolate_truffle').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:morkite_sucker').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:boxium_chocolate_square').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:deserialized_mint').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:the_world_jawbreaker').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:junkite_hard_candy').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:fopium_chocolate_coin').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
    event.create('kubejs:greed_filled_bonbon').food(food => {
        food
            .hunger(1)
            .saturation(1)
            .alwaysEdible()
            .fastToEat()
    })
})

onEvent("minestuck.grist.registry", event => {
  event.create("chroma").rarity(0).value(1).candy("kubejs:chroma_gum_drop");
  event.create("carbs").rarity(0).value(1).candy("kubejs:carbs_marshmallow");
  event.create("scrappy").rarity(0).value(1).candy("kubejs:scrappy_lolly");
  event.create("vitamin_v").rarity(1).value(2).candy("kubejs:vitamin_v_jellybean");
  event.create("rainbownium").rarity(2).value(3).candy("kubejs:rainbownium_twist_candy");
  event.create("ego").rarity(2).value(3).candy("kubejs:ego_chocolate_truffle");
  event.create("morkite").rarity(2).value(2).candy("kubejs:morkite_sucker");
  event.create("boxium").rarity(1).value(2).candy("kubejs:boxium_chocolate_square");
  event.create("deserialized").rarity(3).value(5).candy("kubejs:deserialized_mint");
  event.create("the_world").rarity(1).value(1).candy("kubejs:the_world_jawbreaker");
  event.create("junkite").rarity(0).value(1).candy("kubejs:junkite_hard_candy");
  event.create("fopium").rarity(0).value(1).candy("kubejs:fopium_chocolate_coin");
  event.create("greed").rarity(3).value(5).candy("kubejs:greed_filled_bonbon");
});
