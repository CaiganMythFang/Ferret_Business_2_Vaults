onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decocraft_cheap1') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decocraft/decocraft_cheap1');
	event.player.tell(Text.lightPurple("You open up a Pangolin Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decocraft_cheap2') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decocraft/decocraft_cheap2');
	event.player.tell(Text.lightPurple("You open up a Lion Grin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decocraft_cheap3') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decocraft/decocraft_cheap3');
	event.player.tell(Text.lightPurple("You open up a Culpeo Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decocraft_cheap4') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decocraft/decocraft_cheap4');
	event.player.tell(Text.lightPurple("You open up a Fox Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_decocraft_cheap5') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:decocraft/decocraft_cheap5');
	event.player.tell(Text.lightPurple("You open up a Marten Oasis Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});