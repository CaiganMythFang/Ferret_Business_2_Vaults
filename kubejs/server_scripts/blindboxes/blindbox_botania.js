onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botania_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botania/botania_cheap');
	event.player.tell(Text.lightPurple("You open up an Echidna Bop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botania_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botania/botania_decent');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Build Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botania_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botania/botania_good');
	event.player.tell(Text.lightPurple("You open up an Rabbit Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botania_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botania/botania_amazing');
	event.player.tell(Text.lightPurple("You open up an Marten Oasis Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


