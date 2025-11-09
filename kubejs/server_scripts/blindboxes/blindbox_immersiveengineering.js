onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersiveengineering_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersiveengineering/immersiveengineering_cheap');
	event.player.tell(Text.lightPurple("You open up an Meerkat Trail Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersiveengineering_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersiveengineering/immersiveengineering_decent');
	event.player.tell(Text.lightPurple("You open up an Aardvark Trail Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersiveengineering_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersiveengineering/immersiveengineering_good');
	event.player.tell(Text.lightPurple("You open up an Squirrel Centered Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersiveengineering_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersiveengineering/immersiveengineering_amazing');
	event.player.tell(Text.lightPurple("You open up an Lion Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


