onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_controlengineering_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:controlengineering/controlengineering_cheap');
	event.player.tell(Text.lightPurple("You open up an Computer Mouse Tortilla Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_controlengineering_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:controlengineering/controlengineering_decent');
	event.player.tell(Text.lightPurple("You open up an Hare Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


