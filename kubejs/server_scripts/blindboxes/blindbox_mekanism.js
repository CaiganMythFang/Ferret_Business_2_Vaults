onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanism_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanism/mekanism_cheap');
	event.player.tell(Text.lightPurple("You open up an Skunk Blush Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanism_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanism/mekanism_decent');
	event.player.tell(Text.lightPurple("You open up an Meerkat Rescue Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanism_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanism/mekanism_good');
	event.player.tell(Text.lightPurple("You open up an Rat Glare Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanism_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanism/mekanism_amazing');
	event.player.tell(Text.lightPurple("You open up an Crab Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


