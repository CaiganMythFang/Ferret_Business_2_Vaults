onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_davespotioneering_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:davespotioneering/davespotioneering_cheap');
	event.player.tell(Text.lightPurple("You open up an Raccoon Crime Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_davespotioneering_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:davespotioneering/davespotioneering_decent');
	event.player.tell(Text.lightPurple("You open up an Fennec Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_davespotioneering_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:davespotioneering/davespotioneering_good');
	event.player.tell(Text.lightPurple("You open up an Chinchilla Flop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


