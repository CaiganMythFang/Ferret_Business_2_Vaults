onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_irongenerators_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:irongenerators/irongenerators_cheap');
	event.player.tell(Text.lightPurple("You open up an Raccoon Weird Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_irongenerators_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:irongenerators/irongenerators_decent');
	event.player.tell(Text.lightPurple("You open up an Frog Steal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_irongenerators_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:irongenerators/irongenerators_good');
	event.player.tell(Text.lightPurple("You open up an Hare Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_irongenerators_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:irongenerators/irongenerators_amazing');
	event.player.tell(Text.lightPurple("You open up an Computer Mouse Glance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


