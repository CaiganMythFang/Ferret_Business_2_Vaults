onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_farmingforblockheads_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:farmingforblockheads/farmingforblockheads_cheap');
	event.player.tell(Text.lightPurple("You open up an Gryphon Trot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_farmingforblockheads_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:farmingforblockheads/farmingforblockheads_decent');
	event.player.tell(Text.lightPurple("You open up an Dragon Eldritch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


