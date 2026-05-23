onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_toolbelt_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:toolbelt/toolbelt_decent');
	event.player.tell(Text.lightPurple("You open up an Motmot Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_toolbelt_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:toolbelt/toolbelt_good');
	event.player.tell(Text.lightPurple("You open up an Chipmunk Golf Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


