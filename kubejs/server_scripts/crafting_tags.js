onEvent('item.tags', event => {

    //Adding tags for things that really should have tags
    event.add('forge:nuggets/diamond', 'the_vault:diamond_nugget')
    event.add('forge:nuggets/diamond', 'animalistic_a:diamond_nugget')

})
