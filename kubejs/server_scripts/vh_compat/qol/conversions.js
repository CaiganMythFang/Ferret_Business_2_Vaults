
onEvent("recipes", event => {
    //Mek,IE -> Thermal Lead
    event.shapeless('thermal:lead_ingot', ['mekanism:ingot_lead'])

    //Thermal,IE -> Mek Lead
    event.shapeless('mekanism:ingot_lead', ['thermal:lead_ingot'])


    //Steel conversions
    event.shapeless('moremekanismprocessing:silver_ingot', ['thermal:silver_ingot'])
    event.shapeless('thermal:silver_ingot', ['moremekanismprocessing:silver_ingot'])

    //Tin conversions
    event.shapeless('mekanism:ingot_tin', ['thermal:tin_ingot'])
    event.shapeless('thermal:tin_ingot', ['mekanism:ingot_tin'])

    //Electrum
    event.shapeless('createaddition:electrum_ingot', ['thermal:electrum_ingot'])

    event.shapeless('thermal:electrum_ingot', ['createaddition:electrum_ingot'])

})