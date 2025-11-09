onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsutility_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsutility/rftoolsutility_cheap');
	event.player.tell(Text.lightPurple("You open up an Fox Glance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsutility_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsutility/rftoolsutility_decent');
	event.player.tell(Text.lightPurple("You open up an Weasel Patch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsutility_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsutility/rftoolsutility_good');
	event.player.tell(Text.lightPurple("You open up an Aardwolf Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_rftoolsutility_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:rftoolsutility/rftoolsutility_amazing');
	event.player.tell(Text.lightPurple("You open up an Tiger Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


