onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mcwdoors_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mcwdoors/mcwdoors_cheap');
	event.player.tell(Text.lightPurple("You open up an Crab Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mcwdoors_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mcwdoors/mcwdoors_decent');
	event.player.tell(Text.lightPurple("You open up an Jerboa Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


