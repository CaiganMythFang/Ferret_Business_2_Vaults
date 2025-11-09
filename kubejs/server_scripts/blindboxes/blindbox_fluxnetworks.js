onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_fluxnetworks_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:fluxnetworks/fluxnetworks_cheap');
	event.player.tell(Text.lightPurple("You open up an Genet Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_fluxnetworks_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:fluxnetworks/fluxnetworks_decent');
	event.player.tell(Text.lightPurple("You open up an Tiger Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_fluxnetworks_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:fluxnetworks/fluxnetworks_good');
	event.player.tell(Text.lightPurple("You open up an Chipmunk Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_fluxnetworks_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:fluxnetworks/fluxnetworks_amazing');
	event.player.tell(Text.lightPurple("You open up an Hyena Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


