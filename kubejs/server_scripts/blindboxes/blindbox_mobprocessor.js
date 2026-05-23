onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mobprocessor_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mobprocessor/mobprocessor_decent');
	event.player.tell(Text.lightPurple("You open up an Wolf Teleport Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mobprocessor_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mobprocessor/mobprocessor_good');
	event.player.tell(Text.lightPurple("You open up an Dog Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mobprocessor_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mobprocessor/mobprocessor_amazing');
	event.player.tell(Text.lightPurple("You open up an Snep Thunder Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


