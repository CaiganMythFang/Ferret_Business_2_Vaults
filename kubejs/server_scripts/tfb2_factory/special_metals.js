
let special_metals = [
    'botania:manasteel_ingot', 
    'botania:terrasteel_ingot', 
    'botania:elementium_ingot', 
    'botania:gaia_ingot', 
    'mekanism:ingot_refined_obsidian', 
    'mekanism:ingot_refined_glowstone', 
    'mekanism:ingot_osmium', 
    'thermal:signalum_ingot', 
    'thermal:lumium_ingot', 
    'thermal:enderium_ingot', 
    'moremekanismprocessing:draconium_ingot', 
    'moremekanismprocessing:titanium_ingot', 
    'moremekanismprocessing:tungsten_ingot', 
    'psi:psimetal', 
    'psi:ebony_psimetal', 
    'psi:ivory_psimetal', 
    'botanicalextramachinery:malachite_ingot', 
    'botanicalextramachinery:saffron_ingot', 
    'botanicalextramachinery:shadow_ingot', 
    'botanicalextramachinery:crimson_ingot', 
    'botanicalextramachinery:crystal_ingot', 
    'industrialforegoing:pink_slime_ingot', 
    'createdeco:cast_iron_ingot', 
    'thermal_extra:soul_infused_ingot', 
    'thermal_extra:shellite_ingot', 
    'thermal_extra:twinite_ingot', 
    'thermal_extra:dragonsteel_ingot', 
    'avaritia:crystal_matrix_ingot', 
    'immersiveengineering:ingot_hop_graphite'
]

onEvent("item.tags", event => {
    special_metals.forEach(id => {
        event.add('tfb2:special_metals', `${id}`)
    })
})