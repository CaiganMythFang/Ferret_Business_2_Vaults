onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_psi_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:psi/psi_cheap');
	event.player.tell(Text.lightPurple("You open up an Crab Oasis Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_psi_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:psi/psi_decent');
	event.player.tell(Text.lightPurple("You open up an Caracal Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_psi_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:psi/psi_good');
	event.player.tell(Text.lightPurple("You open up an Meerkat Trot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


