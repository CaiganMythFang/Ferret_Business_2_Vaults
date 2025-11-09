onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_dyenamics_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:dyenamics/dyenamics_cheap');
	event.player.tell(Text.lightPurple("You open up an Meerkat Hug Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_dyenamics_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:dyenamics/dyenamics_decent');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


