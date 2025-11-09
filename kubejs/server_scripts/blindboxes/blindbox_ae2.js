onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2/ae2_cheap');
	event.player.tell(Text.lightPurple("You open up an Bee Leap Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2/ae2_decent');
	event.player.tell(Text.lightPurple("You open up an Panda Generate Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2/ae2_good');
	event.player.tell(Text.lightPurple("You open up an Rabbit Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2/ae2_amazing');
	event.player.tell(Text.lightPurple("You open up an Tiger Weird Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


