onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cagerium_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cagerium/cagerium_cheap');
	event.player.tell(Text.lightPurple("You open up an Caracal Steal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cagerium_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cagerium/cagerium_decent');
	event.player.tell(Text.lightPurple("You open up an Civet Kick Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cagerium_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cagerium/cagerium_good');
	event.player.tell(Text.lightPurple("You open up an Pangolin Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cagerium_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cagerium/cagerium_amazing');
	event.player.tell(Text.lightPurple("You open up an Dragon Blush Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


