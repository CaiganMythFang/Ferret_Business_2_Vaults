onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_compressedcreativity_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:compressedcreativity/compressedcreativity_cheap');
	event.player.tell(Text.lightPurple("You open up an Fennec Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_compressedcreativity_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:compressedcreativity/compressedcreativity_decent');
	event.player.tell(Text.lightPurple("You open up an Wicker Skate Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});
