onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decorative_blocks_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decorative_blocks/decorative_blocks_cheap');
	event.player.tell(Text.lightPurple("You open up an Bear Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decorative_blocks_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decorative_blocks/decorative_blocks_decent');
	event.player.tell(Text.lightPurple("You open up an Crab Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


