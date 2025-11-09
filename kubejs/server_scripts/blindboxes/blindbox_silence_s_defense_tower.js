onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_silence_s_defense_tower_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:silence_s_defense_tower/silence_s_defense_tower_cheap');
	event.player.tell(Text.lightPurple("You open up an Binturong Crime Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_silence_s_defense_tower_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:silence_s_defense_tower/silence_s_defense_tower_decent');
	event.player.tell(Text.lightPurple("You open up an Dormouse Race Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_silence_s_defense_tower_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:silence_s_defense_tower/silence_s_defense_tower_good');
	event.player.tell(Text.lightPurple("You open up an Motmot Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_silence_s_defense_tower_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:silence_s_defense_tower/silence_s_defense_tower_amazing');
	event.player.tell(Text.lightPurple("You open up an Mandrill Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


