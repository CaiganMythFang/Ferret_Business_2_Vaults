onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_littlelogistics_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:littlelogistics/littlelogistics_cheap');
	event.player.tell(Text.lightPurple("You open up an Iguana Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_littlelogistics_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:littlelogistics/littlelogistics_decent');
	event.player.tell(Text.lightPurple("You open up an Dormouse Blush Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_littlelogistics_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:littlelogistics/littlelogistics_amazing');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Glance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


