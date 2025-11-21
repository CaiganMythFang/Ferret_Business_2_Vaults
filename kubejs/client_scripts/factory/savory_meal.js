
let savory_meal = [
    'minecraft:rabbit_stew', 
    'ecologics:tropical_stew', 
    'pneumaticcraft:salmon_tempura', 
    'pneumaticcraft:cod_n_chips', 
    'pneumaticcraft:sourdough_bread', 
    'delightful:cheeseburger', 
    'delightful:deluxe_cheeseburger', 
    'delightful:crab_rangoon', 
    'farmersdelight:mixed_salad', 
    'farmersdelight:nether_salad', 
    'farmersdelight:barbecue_stick', 
    'farmersdelight:egg_sandwich', 
    'farmersdelight:chicken_sandwich', 
    'farmersdelight:hamburger', 
    'farmersdelight:bacon_sandwich', 
    'farmersdelight:mutton_wrap', 
    'farmersdelight:dumplings', 
    'farmersdelight:stuffed_potato', 
    'farmersdelight:cabbage_rolls', 
    'farmersdelight:salmon_roll', 
    'farmersdelight:cod_roll', 
    'farmersdelight:kelp_roll', 
    'farmersdelight:kelp_roll_slice', 
    'farmersdelight:beef_stew', 
    'farmersdelight:chicken_soup', 
    'farmersdelight:vegetable_soup', 
    'farmersdelight:fish_stew', 
    'farmersdelight:fried_rice', 
    'farmersdelight:pumpkin_soup', 
    'farmersdelight:baked_cod_stew', 
    'farmersdelight:noodle_soup', 
    'farmersdelight:bacon_and_eggs', 
    'farmersdelight:pasta_with_meatballs', 
    'farmersdelight:pasta_with_mutton_chop', 
    'farmersdelight:mushroom_rice', 
    'farmersdelight:roasted_mutton_chops', 
    'farmersdelight:steak_and_potatoes', 
    'farmersdelight:vegetable_noodles', 
    'farmersdelight:ratatouille', 
    'farmersdelight:squid_ink_pasta', 
    'farmersdelight:grilled_salmon', 
    'farmersdelight:roast_chicken', 
    'farmersdelight:stuffed_pumpkin', 
    'farmersdelight:honey_glazed_ham', 
    'farmersdelight:shepherds_pie', 
    'farmersdelight:dog_food', 
    'farmersrespite:coffee', 
    'farmersrespite:nether_wart_sourdough', 
    'farmersrespite:black_cod', 
    'farmersrespite:tea_curry', 
    'farmersrespite:blazing_chili'
]

onEvent('item.tooltip', tooltip => {
    savory_meal.forEach(id => {
      tooltip.addAdvanced(`${id}`, (item, advanced, text) => {
          text.add(1, Text.yellow('Factory Catagory : Savory Meal'))
    })
  })
})