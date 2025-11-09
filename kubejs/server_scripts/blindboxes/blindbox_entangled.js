onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_entangled_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:entangled/entangled_decent');
	event.player.tell(Text.lightPurple("You open up an Skunk Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_entangled_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:entangled/entangled_good');
	event.player.tell(Text.lightPurple("You open up an Frog Climb Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


