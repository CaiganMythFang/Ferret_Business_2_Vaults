onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ironchests_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ironchests/ironchests_cheap');
	event.player.tell(Text.lightPurple("You open up an Bear Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ironchests_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ironchests/ironchests_decent');
	event.player.tell(Text.lightPurple("You open up an Bee Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ironchests_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ironchests/ironchests_good');
	event.player.tell(Text.lightPurple("You open up an Genet Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


