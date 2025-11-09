onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_projecte_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:projecte/projecte_cheap');
	event.player.tell(Text.lightPurple("You open up an Mandrill Rip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_projecte_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:projecte/projecte_decent');
	event.player.tell(Text.lightPurple("You open up an Rabbit Hover Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_projecte_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:projecte/projecte_good');
	event.player.tell(Text.lightPurple("You open up an Dragon Bop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_projecte_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:projecte/projecte_amazing');
	event.player.tell(Text.lightPurple("You open up an Marten Bounce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


