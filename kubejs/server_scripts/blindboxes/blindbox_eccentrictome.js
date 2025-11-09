onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_eccentrictome_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:eccentrictome/eccentrictome_cheap');
	event.player.tell(Text.lightPurple("You open up an Ferret Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


