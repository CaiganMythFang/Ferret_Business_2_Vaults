onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pipez_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pipez/pipez_cheap');
	event.player.tell(Text.lightPurple("You open up an Civet Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pipez_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pipez/pipez_decent');
	event.player.tell(Text.lightPurple("You open up an Bear Bop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pipez_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pipez/pipez_good');
	event.player.tell(Text.lightPurple("You open up an Toucan Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pipez_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pipez/pipez_amazing');
	event.player.tell(Text.lightPurple("You open up an Iguana Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


