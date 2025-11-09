onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createdeco_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createdeco/createdeco_cheap');
	event.player.tell(Text.lightPurple("You open up an Squirrel Glare Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createdeco_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createdeco/createdeco_decent');
	event.player.tell(Text.lightPurple("You open up an Mandrill Dance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createdeco_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createdeco/createdeco_good');
	event.player.tell(Text.lightPurple("You open up an Echidna Context Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


