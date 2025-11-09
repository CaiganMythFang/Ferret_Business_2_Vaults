onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rechiseledcreate_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rechiseledcreate/rechiseledcreate_cheap');
	event.player.tell(Text.lightPurple("You open up an Frog Slide Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rechiseledcreate_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rechiseledcreate/rechiseledcreate_decent');
	event.player.tell(Text.lightPurple("You open up an Lion Golf Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


