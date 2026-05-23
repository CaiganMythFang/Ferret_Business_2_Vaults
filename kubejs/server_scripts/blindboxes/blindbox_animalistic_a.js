onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_animalistic_a_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:animalistic_a/animalistic_a_cheap');
	event.player.tell(Text.lightPurple("You open up an Caracal Race Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_animalistic_a_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:animalistic_a/animalistic_a_decent');
	event.player.tell(Text.lightPurple("You open up an Aardvark Rescue Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_animalistic_a_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:animalistic_a/animalistic_a_good');
	event.player.tell(Text.lightPurple("You open up an Panda Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


