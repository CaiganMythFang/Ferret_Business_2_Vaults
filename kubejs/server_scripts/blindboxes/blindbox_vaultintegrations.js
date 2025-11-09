onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vaultintegrations_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vaultintegrations/vaultintegrations_decent');
	event.player.tell(Text.lightPurple("You open up an Fennec Fierce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vaultintegrations_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vaultintegrations/vaultintegrations_good');
	event.player.tell(Text.lightPurple("You open up an Hare Farm Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vaultintegrations_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vaultintegrations/vaultintegrations_amazing');
	event.player.tell(Text.lightPurple("You open up an Mouse Spring Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


