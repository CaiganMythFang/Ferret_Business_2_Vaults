onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_neoncraft2_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:neoncraft2/neoncraft2_cheap');
	event.player.tell(Text.lightPurple("You open up an Jerboa Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_neoncraft2_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:neoncraft2/neoncraft2_decent');
	event.player.tell(Text.lightPurple("You open up an Raccoon Patch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


