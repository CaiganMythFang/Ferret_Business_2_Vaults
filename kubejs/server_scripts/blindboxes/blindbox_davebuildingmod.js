onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_davebuildingmod_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:davebuildingmod/davebuildingmod_cheap');
	event.player.tell(Text.lightPurple("You open up an Alligator Rip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_davebuildingmod_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:davebuildingmod/davebuildingmod_decent');
	event.player.tell(Text.lightPurple("You open up an Badger Centered Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


