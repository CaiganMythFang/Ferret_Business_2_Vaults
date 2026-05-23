onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pneumaticcraft_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pneumaticcraft/pneumaticcraft_cheap');
	event.player.tell(Text.lightPurple("You open up an Dormouse Crime Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pneumaticcraft_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pneumaticcraft/pneumaticcraft_decent');
	event.player.tell(Text.lightPurple("You open up an Squirrel Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pneumaticcraft_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pneumaticcraft/pneumaticcraft_good');
	event.player.tell(Text.lightPurple("You open up an Hamster Fly Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_pneumaticcraft_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:pneumaticcraft/pneumaticcraft_amazing');
	event.player.tell(Text.lightPurple("You open up an Marten Rip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


