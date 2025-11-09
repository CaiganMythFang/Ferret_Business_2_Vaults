onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cookingforblockheads_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cookingforblockheads/cookingforblockheads_cheap');
	event.player.tell(Text.lightPurple("You open up an Dragon Spooky Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cookingforblockheads_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cookingforblockheads/cookingforblockheads_decent');
	event.player.tell(Text.lightPurple("You open up an Squirrel Leap Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


