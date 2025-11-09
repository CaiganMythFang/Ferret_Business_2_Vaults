onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_peripherals_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:peripherals/peripherals_cheap');
	event.player.tell(Text.lightPurple("You open up an Aardvark Hover Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_peripherals_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:peripherals/peripherals_decent');
	event.player.tell(Text.lightPurple("You open up an Rabbit Jump Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_peripherals_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:peripherals/peripherals_good');
	event.player.tell(Text.lightPurple("You open up an Echidna Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


