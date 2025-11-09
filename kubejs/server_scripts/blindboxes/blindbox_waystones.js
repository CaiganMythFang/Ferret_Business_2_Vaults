onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_waystones_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:waystones/waystones_decent');
	event.player.tell(Text.lightPurple("You open up an Aardvark Work Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


