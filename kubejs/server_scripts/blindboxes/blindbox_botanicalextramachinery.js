onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanicalextramachinery_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanicalextramachinery/botanicalextramachinery_decent');
	event.player.tell(Text.lightPurple("You open up an Otter Haul Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanicalextramachinery_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanicalextramachinery/botanicalextramachinery_good');
	event.player.tell(Text.lightPurple("You open up an Culpeo Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanicalextramachinery_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanicalextramachinery/botanicalextramachinery_amazing');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


