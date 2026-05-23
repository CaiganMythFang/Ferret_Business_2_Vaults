onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_gateways_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:gateways/gateways_decent');
	event.player.tell(Text.lightPurple("You open up an Rabbit Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_gateways_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:gateways/gateways_good');
	event.player.tell(Text.lightPurple("You open up an Aardwolf Jig Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_gateways_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:gateways/gateways_amazing');
	event.player.tell(Text.lightPurple("You open up an Frog Batch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


