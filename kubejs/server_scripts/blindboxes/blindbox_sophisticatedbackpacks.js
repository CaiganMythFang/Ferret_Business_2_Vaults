onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedbackpacks_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedbackpacks/sophisticatedbackpacks_cheap');
	event.player.tell(Text.lightPurple("You open up an Weasel Climb Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedbackpacks_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedbackpacks/sophisticatedbackpacks_decent');
	event.player.tell(Text.lightPurple("You open up an Squirrel Spin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedbackpacks_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedbackpacks/sophisticatedbackpacks_good');
	event.player.tell(Text.lightPurple("You open up an Badger Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sophisticatedbackpacks_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sophisticatedbackpacks/sophisticatedbackpacks_amazing');
	event.player.tell(Text.lightPurple("You open up an Wolf Bounce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


