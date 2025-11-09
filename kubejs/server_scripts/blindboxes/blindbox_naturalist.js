onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_naturalist_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:naturalist/naturalist_cheap');
	event.player.tell(Text.lightPurple("You open up an Hamster Fancy Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_naturalist_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:naturalist/naturalist_decent');
	event.player.tell(Text.lightPurple("You open up an Rabbit Bounce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


