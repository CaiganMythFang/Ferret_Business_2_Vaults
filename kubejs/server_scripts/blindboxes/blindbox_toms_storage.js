onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_toms_storage_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:toms_storage/toms_storage_cheap');
	event.player.tell(Text.lightPurple("You open up an Raccoon Centered Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_toms_storage_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:toms_storage/toms_storage_decent');
	event.player.tell(Text.lightPurple("You open up an Otter Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_toms_storage_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:toms_storage/toms_storage_good');
	event.player.tell(Text.lightPurple("You open up an Hare Board Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_toms_storage_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:toms_storage/toms_storage_amazing');
	event.player.tell(Text.lightPurple("You open up an Genet Hug Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


