onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanicalmachinery_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanicalmachinery/botanicalmachinery_decent');
	event.player.tell(Text.lightPurple("You open up an Fox Board Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanicalmachinery_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanicalmachinery/botanicalmachinery_good');
	event.player.tell(Text.lightPurple("You open up an Iguana Weird Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanicalmachinery_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanicalmachinery/botanicalmachinery_amazing');
	event.player.tell(Text.lightPurple("You open up an Crab Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


