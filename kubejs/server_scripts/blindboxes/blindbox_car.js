onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_car_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:car/car_cheap');
	event.player.tell(Text.lightPurple("You open up an Motmot Watch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_car_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:car/car_decent');
	event.player.tell(Text.lightPurple("You open up an Marten Patch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_car_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:car/car_good');
	event.player.tell(Text.lightPurple("You open up an Yinglet Swing Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


