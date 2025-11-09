onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_minecraft_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/minecraft_cheap');
	event.player.tell(Text.lightPurple("You open up an Alligator Oasis Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_minecraft_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/minecraft_decent');
	event.player.tell(Text.lightPurple("You open up an Rabbit Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_minecraft_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/minecraft_good');
	event.player.tell(Text.lightPurple("You open up an Hamster Build Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_minecraft_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/minecraft_amazing');
	event.player.tell(Text.lightPurple("You open up an Genet Bop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


