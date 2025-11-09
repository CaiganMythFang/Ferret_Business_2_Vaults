onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_industrialforegoing_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:industrialforegoing/industrialforegoing_cheap');
	event.player.tell(Text.lightPurple("You open up an Marten Slide Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_industrialforegoing_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:industrialforegoing/industrialforegoing_decent');
	event.player.tell(Text.lightPurple("You open up an Horse Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_industrialforegoing_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:industrialforegoing/industrialforegoing_good');
	event.player.tell(Text.lightPurple("You open up an Dormouse Golf Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_industrialforegoing_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:industrialforegoing/industrialforegoing_amazing');
	event.player.tell(Text.lightPurple("You open up an Motmot Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


