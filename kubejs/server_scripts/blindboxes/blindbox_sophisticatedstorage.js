onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedstorage_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedstorage/sophisticatedstorage_cheap');
	event.player.tell(Text.lightPurple("You open up an Dragon Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedstorage_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedstorage/sophisticatedstorage_decent');
	event.player.tell(Text.lightPurple("You open up an Lion Talk Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedstorage_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedstorage/sophisticatedstorage_good');
	event.player.tell(Text.lightPurple("You open up an Raccoon Scrungle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedstorage_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedstorage/sophisticatedstorage_amazing');
	event.player.tell(Text.lightPurple("You open up an Mandrill Steal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


