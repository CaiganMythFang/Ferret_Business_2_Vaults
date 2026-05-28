onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_moa_decor_toys_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:moa_decor_toys/moa_decor_toys_cheap');
	event.player.tell(Text.lightPurple("You open up an Hare Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});