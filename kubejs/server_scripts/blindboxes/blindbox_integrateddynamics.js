onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integrateddynamics_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integrateddynamics/integrateddynamics_cheap');
	event.player.tell(Text.lightPurple("You open up an Dragon Context Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integrateddynamics_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integrateddynamics/integrateddynamics_decent');
	event.player.tell(Text.lightPurple("You open up an Dingo Golf Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integrateddynamics_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integrateddynamics/integrateddynamics_good');
	event.player.tell(Text.lightPurple("You open up an Toucan Hover Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integrateddynamics_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integrateddynamics/integrateddynamics_amazing');
	event.player.tell(Text.lightPurple("You open up an Aardvark Logic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


