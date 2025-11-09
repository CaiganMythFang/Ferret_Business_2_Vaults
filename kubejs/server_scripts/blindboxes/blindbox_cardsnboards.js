onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cardsnboards_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cardsnboards/cardsnboards_cheap');
	event.player.tell(Text.lightPurple("You open up an Panda Farm Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cardsnboards_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cardsnboards/cardsnboards_decent');
	event.player.tell(Text.lightPurple("You open up an Chipmunk Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cardsnboards_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cardsnboards/cardsnboards_good');
	event.player.tell(Text.lightPurple("You open up an Lizard Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


