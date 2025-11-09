onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_occultism_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:occultism/occultism_cheap');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_occultism_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:occultism/occultism_decent');
	event.player.tell(Text.lightPurple("You open up an Capybara Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_occultism_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:occultism/occultism_good');
	event.player.tell(Text.lightPurple("You open up an Chipmunk Context Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_occultism_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:occultism/occultism_amazing');
	event.player.tell(Text.lightPurple("You open up an Dingo Fierce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


