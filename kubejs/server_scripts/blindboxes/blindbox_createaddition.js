onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createaddition_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createaddition/createaddition_cheap');
	event.player.tell(Text.lightPurple("You open up an Genet Climb Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createaddition_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createaddition/createaddition_decent');
	event.player.tell(Text.lightPurple("You open up an Squirrel Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createaddition_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createaddition/createaddition_good');
	event.player.tell(Text.lightPurple("You open up an Hare Illogic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createaddition_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createaddition/createaddition_amazing');
	event.player.tell(Text.lightPurple("You open up an Badger Scroll Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


