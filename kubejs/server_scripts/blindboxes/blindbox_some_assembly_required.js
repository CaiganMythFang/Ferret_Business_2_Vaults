onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_some_assembly_required_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:some_assembly_required/some_assembly_required_cheap');
	event.player.tell(Text.lightPurple("You open up an Pigeon Fry Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_some_assembly_required_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:some_assembly_required/some_assembly_required_decent');
	event.player.tell(Text.lightPurple("You open up an Dragon Draw Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});