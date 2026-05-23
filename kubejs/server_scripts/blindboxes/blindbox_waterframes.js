onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_waterframes_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:waterframes/waterframes_decent');
	event.player.tell(Text.lightPurple("You open up an Bear Unit Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_waterframes_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:waterframes/waterframes_good');
	event.player.tell(Text.lightPurple("You open up an Coyote Crackle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});