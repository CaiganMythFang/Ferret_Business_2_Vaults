onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_tropicraft_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:tropicraft/tropicraft_cheap');
	event.player.tell(Text.lightPurple("You open up an Badger Glare Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_tropicraft_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:tropicraft/tropicraft_decent');
	event.player.tell(Text.lightPurple("You open up an Jerboa Illogic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_tropicraft_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:tropicraft/tropicraft_good');
	event.player.tell(Text.lightPurple("You open up an Aardvark Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


