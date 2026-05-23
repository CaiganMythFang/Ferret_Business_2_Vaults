onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createoreexcavation_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createoreexcavation/createoreexcavation_cheap');
	event.player.tell(Text.lightPurple("You open up an Dormouse Farm Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createoreexcavation_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createoreexcavation/createoreexcavation_decent');
	event.player.tell(Text.lightPurple("You open up an Crab Talk Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createoreexcavation_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createoreexcavation/createoreexcavation_good');
	event.player.tell(Text.lightPurple("You open up an Skunk Bounce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_createoreexcavation_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:createoreexcavation/createoreexcavation_amazing');
	event.player.tell(Text.lightPurple("You open up an Genet Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


