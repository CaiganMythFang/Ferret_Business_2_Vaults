onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_curvy_pipes_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:curvy_pipes/curvy_pipes_cheap');
	event.player.tell(Text.lightPurple("You open up an Rat Boxed Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_curvy_pipes_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:curvy_pipes/curvy_pipes_decent');
	event.player.tell(Text.lightPurple("You open up an Beaver Plank Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_curvy_pipes_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:curvy_pipes/curvy_pipes_good');
	event.player.tell(Text.lightPurple("You open up an Mantis Read Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_curvy_pipes_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:curvy_pipes/curvy_pipes_amazing');
	event.player.tell(Text.lightPurple("You open up an Jerboa Slam Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


