onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2things_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2things/ae2things_decent');
	event.player.tell(Text.lightPurple("You open up an Panda Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2things_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2things/ae2things_good');
	event.player.tell(Text.lightPurple("You open up an Rat Dance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2things_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2things/ae2things_amazing');
	event.player.tell(Text.lightPurple("You open up an Dingo Patch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


