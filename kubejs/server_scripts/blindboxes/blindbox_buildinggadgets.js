onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildinggadgets_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildinggadgets/buildinggadgets_cheap');
	event.player.tell(Text.lightPurple("You open up an Lizard Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildinggadgets_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildinggadgets/buildinggadgets_decent');
	event.player.tell(Text.lightPurple("You open up an Badger Steal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildinggadgets_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildinggadgets/buildinggadgets_good');
	event.player.tell(Text.lightPurple("You open up an Llama Batch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


