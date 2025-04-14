onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:fop_coin_pouch') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:fop_coin_pouch');
    event.player.tell(Text.lightPurple("You open the bag, hoping for a coin."));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});