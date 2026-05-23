onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_lctech_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:lctech/lctech_cheap');
	event.player.tell(Text.lightPurple("You open up an Iguana Patch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_lctech_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:lctech/lctech_decent');
	event.player.tell(Text.lightPurple("You open up an Aardvark Grin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


