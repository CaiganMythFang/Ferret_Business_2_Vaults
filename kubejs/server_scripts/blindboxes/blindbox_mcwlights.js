onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mcwlights_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mcwlights/mcwlights_cheap');
	event.player.tell(Text.lightPurple("You open up an Dormouse Steal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mcwlights_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mcwlights/mcwlights_decent');
	event.player.tell(Text.lightPurple("You open up an Jerboa Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


