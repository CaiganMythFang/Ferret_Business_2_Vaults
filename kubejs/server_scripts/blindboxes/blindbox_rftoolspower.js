onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolspower_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolspower/rftoolspower_cheap');
	event.player.tell(Text.lightPurple("You open up an Chinchilla Centered Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolspower_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolspower/rftoolspower_decent');
	event.player.tell(Text.lightPurple("You open up an Rat Kick Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolspower_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolspower/rftoolspower_good');
	event.player.tell(Text.lightPurple("You open up an Alpaca Link Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolspower_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolspower/rftoolspower_amazing');
	event.player.tell(Text.lightPurple("You open up an Rabbit Kick Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


