onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pocketstorage_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pocketstorage/pocketstorage_decent');
	event.player.tell(Text.lightPurple("You open up an Mink Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pocketstorage_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pocketstorage/pocketstorage_good');
	event.player.tell(Text.lightPurple("You open up an Caracal Oasis Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pocketstorage_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pocketstorage/pocketstorage_amazing');
	event.player.tell(Text.lightPurple("You open up an Pangolin Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


