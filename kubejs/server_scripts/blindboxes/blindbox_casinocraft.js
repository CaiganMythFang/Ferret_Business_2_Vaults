onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_casinocraft_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:casinocraft/casinocraft_cheap');
	event.player.tell(Text.lightPurple("You open up an Toucan Work Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_casinocraft_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:casinocraft/casinocraft_decent');
	event.player.tell(Text.lightPurple("You open up an Ferret Trail Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


