onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_the_vault_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/the_vault_cheap');
	event.player.tell(Text.lightPurple("You open up an Mink Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_the_vault_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/the_vault_decent');
	event.player.tell(Text.lightPurple("You open up an Echidna Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_the_vault_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/the_vault_good');
	event.player.tell(Text.lightPurple("You open up an Tiger Scrungle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_the_vault_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/the_vault_amazing');
	event.player.tell(Text.lightPurple("You open up an Culpeo Run Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


