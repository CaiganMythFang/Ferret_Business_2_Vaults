onEvent('item.tags', event => {

    //Adding tags for hqm placeholders
    event.add('tfb2:glitched_block', 'tfb2:hqm_glitched')
    event.add('tfb2:glitched_item', 'tfb2:hqm_glitched_item')
    
    //Removing vault added tag
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_vault_cobble')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_deepslate_cobble')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_dark_oak_log')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_sandstone')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_snow_block')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_purple_terracotta')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_dirt')
    event.remove('the_vault:voided_by_crucible', 'tfb2:glitched_crimsite')
})
