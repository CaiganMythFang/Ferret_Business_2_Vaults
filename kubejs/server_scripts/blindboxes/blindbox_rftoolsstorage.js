onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsstorage_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsstorage/rftoolsstorage_cheap');
	event.player.tell(Text.lightPurple("You open up an Fox Grin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsstorage_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsstorage/rftoolsstorage_decent');
	event.player.tell(Text.lightPurple("You open up an Genet Generate Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsstorage_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsstorage/rftoolsstorage_good');
	event.player.tell(Text.lightPurple("You open up an Frog Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


