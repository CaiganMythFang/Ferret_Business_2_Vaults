onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vaultbeacon_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vaultbeacon/vaultbeacon_cheap');
	event.player.tell(Text.lightPurple("You open up an Mandrill Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vaultbeacon_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vaultbeacon/vaultbeacon_decent');
	event.player.tell(Text.lightPurple("You open up an Gryphon Link Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vaultbeacon_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vaultbeacon/vaultbeacon_good');
	event.player.tell(Text.lightPurple("You open up an Ferret Inject Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


