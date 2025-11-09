onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_crittersandcompanions_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:crittersandcompanions/crittersandcompanions_cheap');
	event.player.tell(Text.lightPurple("You open up an Badger Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


