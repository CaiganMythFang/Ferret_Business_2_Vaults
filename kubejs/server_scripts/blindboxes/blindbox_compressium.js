onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_compressium_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:compressium/compressium_cheap');
	event.player.tell(Text.lightPurple("You open up an Wolf Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_compressium_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:compressium/compressium_decent');
	event.player.tell(Text.lightPurple("You open up an Crab Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_compressium_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:compressium/compressium_good');
	event.player.tell(Text.lightPurple("You open up an Squirrel Flop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_compressium_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:compressium/compressium_amazing');
	event.player.tell(Text.lightPurple("You open up an Raccoon Kick Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


