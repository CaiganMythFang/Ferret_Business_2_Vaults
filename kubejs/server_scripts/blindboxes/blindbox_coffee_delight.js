onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_coffee_delight_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:coffee_delight/coffee_delight_cheap');
	event.player.tell(Text.lightPurple("You open up an Horse Logic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_coffee_delight_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:coffee_delight/coffee_delight_decent');
	event.player.tell(Text.lightPurple("You open up an Alpaca Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


