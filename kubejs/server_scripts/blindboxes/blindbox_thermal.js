onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal/thermal_cheap');
	event.player.tell(Text.lightPurple("You open up an Binturong Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal/thermal_decent');
	event.player.tell(Text.lightPurple("You open up an Hare Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal/thermal_good');
	event.player.tell(Text.lightPurple("You open up an Dragon Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal/thermal_amazing');
	event.player.tell(Text.lightPurple("You open up an Genet Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


