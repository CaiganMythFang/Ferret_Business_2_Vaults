onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createdieselgenerators_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createdieselgenerators/createdieselgenerators_cheap');
	event.player.tell(Text.lightPurple("You open up an Crab Peak Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createdieselgenerators_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createdieselgenerators/createdieselgenerators_decent');
	event.player.tell(Text.lightPurple("You open up an Aardvark Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createdieselgenerators_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createdieselgenerators/createdieselgenerators_good');
	event.player.tell(Text.lightPurple("You open up an Rat Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


