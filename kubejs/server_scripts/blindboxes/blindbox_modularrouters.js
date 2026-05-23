onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_modularrouters_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:modularrouters/modularrouters_cheap');
	event.player.tell(Text.lightPurple("You open up an Llama Scrungle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_modularrouters_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:modularrouters/modularrouters_decent');
	event.player.tell(Text.lightPurple("You open up an Squirrel Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_modularrouters_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:modularrouters/modularrouters_good');
	event.player.tell(Text.lightPurple("You open up an Civet Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_modularrouters_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:modularrouters/modularrouters_amazing');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Talk Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


