onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rechiseled_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rechiseled/rechiseled_cheap');
	event.player.tell(Text.lightPurple("You open up an Lion Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rechiseled_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rechiseled/rechiseled_decent');
	event.player.tell(Text.lightPurple("You open up an Lion Glance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rechiseled_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rechiseled/rechiseled_good');
	event.player.tell(Text.lightPurple("You open up an Alpaca Fancy Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


