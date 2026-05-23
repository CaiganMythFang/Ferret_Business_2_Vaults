onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildscape_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildscape/buildscape_cheap');
	event.player.tell(Text.lightPurple("You open up an Cat Monitor Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildscape_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildscape/buildscape_decent');
	event.player.tell(Text.lightPurple("You open up an Fox Way Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildscape_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildscape/buildscape_good');
	event.player.tell(Text.lightPurple("You open up an Goat Crunch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildscape_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildscape/buildscape_amazing');
	event.player.tell(Text.lightPurple("You open up an Deer Slide Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


