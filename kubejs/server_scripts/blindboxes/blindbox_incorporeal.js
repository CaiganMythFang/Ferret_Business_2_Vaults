onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_incorporeal_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:incorporeal/incorporeal_cheap');
	event.player.tell(Text.lightPurple("You open up an Computer Mouse Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_incorporeal_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:incorporeal/incorporeal_decent');
	event.player.tell(Text.lightPurple("You open up an Bear Trail Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_incorporeal_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:incorporeal/incorporeal_good');
	event.player.tell(Text.lightPurple("You open up an Aardwolf Blush Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_incorporeal_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:incorporeal/incorporeal_amazing');
	event.player.tell(Text.lightPurple("You open up an Rat Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


