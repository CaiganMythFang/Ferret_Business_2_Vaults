onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsbase_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsbase/rftoolsbase_cheap');
	event.player.tell(Text.lightPurple("You open up an Rabbit Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsbase_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsbase/rftoolsbase_decent');
	event.player.tell(Text.lightPurple("You open up an Dingo Watch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsbase_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsbase/rftoolsbase_good');
	event.player.tell(Text.lightPurple("You open up an Aardvark Haunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


