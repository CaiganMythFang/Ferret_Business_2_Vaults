onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_experienceobelisk_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:experienceobelisk/experienceobelisk_decent');
	event.player.tell(Text.lightPurple("You open up an Gryphon Race Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_experienceobelisk_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:experienceobelisk/experienceobelisk_good');
	event.player.tell(Text.lightPurple("You open up an Echidna Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_experienceobelisk_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:experienceobelisk/experienceobelisk_amazing');
	event.player.tell(Text.lightPurple("You open up an Butterfly Link Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


