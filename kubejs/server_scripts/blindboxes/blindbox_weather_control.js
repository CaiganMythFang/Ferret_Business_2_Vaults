onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_weather_control_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:weather_control/weather_control_decent');
	event.player.tell(Text.lightPurple("You open up an Aardvark Generate Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_weather_control_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:weather_control/weather_control_good');
	event.player.tell(Text.lightPurple("You open up an Gryphon Glance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_weather_control_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:weather_control/weather_control_amazing');
	event.player.tell(Text.lightPurple("You open up an Dingo Blush Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


