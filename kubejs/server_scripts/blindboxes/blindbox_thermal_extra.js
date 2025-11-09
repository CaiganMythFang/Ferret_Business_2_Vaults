onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_extra_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal_extra/thermal_extra_cheap');
	event.player.tell(Text.lightPurple("You open up an Tiger Rescue Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_extra_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal_extra/thermal_extra_decent');
	event.player.tell(Text.lightPurple("You open up an Butterfly Glance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_extra_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal_extra/thermal_extra_good');
	event.player.tell(Text.lightPurple("You open up an Fennec Trot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_thermal_extra_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:thermal_extra/thermal_extra_amazing');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Blush Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


