onEvent('item.right_click', event => {

  let offhand = event.player.getHeldItem('off_hand');
  //event.player.tell(offhand);
  if (event.item.id == 'the_vault:axe' && offhand == 'the_vault:ash_jewel') {
    event.cancel()
    event.server.runCommandSilent('execute as @p run the_vault gear_debug setLevel 50');
    
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      offhand.count--
    }
  }
});