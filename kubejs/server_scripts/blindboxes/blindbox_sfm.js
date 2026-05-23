onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sfm_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sfm/sfm_decent');
	event.player.tell(Text.lightPurple("You open up an Raccoon Bounce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_sfm_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:sfm/sfm_amazing');
	event.player.tell(Text.lightPurple("You open up an Aardvark Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


