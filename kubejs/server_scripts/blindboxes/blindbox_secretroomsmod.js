onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_secretroomsmod_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:secretroomsmod/secretroomsmod_cheap');
	event.player.tell(Text.lightPurple("You open up an Aardwolf Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_secretroomsmod_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:secretroomsmod/secretroomsmod_decent');
	event.player.tell(Text.lightPurple("You open up an Mouse Flop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


