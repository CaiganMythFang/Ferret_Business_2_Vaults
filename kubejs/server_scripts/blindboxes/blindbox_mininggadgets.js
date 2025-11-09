onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mininggadgets_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mininggadgets/mininggadgets_cheap');
	event.player.tell(Text.lightPurple("You open up an Gryphon Glare Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mininggadgets_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mininggadgets/mininggadgets_decent');
	event.player.tell(Text.lightPurple("You open up an Hare Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mininggadgets_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mininggadgets/mininggadgets_good');
	event.player.tell(Text.lightPurple("You open up an Weasel Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


