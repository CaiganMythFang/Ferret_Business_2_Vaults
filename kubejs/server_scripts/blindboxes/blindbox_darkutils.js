onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_darkutils_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:darkutils/darkutils_cheap');
	event.player.tell(Text.lightPurple("You open up an Horse Fancy Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_darkutils_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:darkutils/darkutils_decent');
	event.player.tell(Text.lightPurple("You open up an Alligator Spring Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_darkutils_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:darkutils/darkutils_good');
	event.player.tell(Text.lightPurple("You open up an Weasel Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_darkutils_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:darkutils/darkutils_amazing');
	event.player.tell(Text.lightPurple("You open up an Badger Link Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


