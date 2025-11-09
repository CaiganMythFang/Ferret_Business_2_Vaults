onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_laserbridges_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:laserbridges/laserbridges_decent');
	event.player.tell(Text.lightPurple("You open up an Lizard Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


