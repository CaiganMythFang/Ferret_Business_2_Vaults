onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_effortlessbuilding_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:effortlessbuilding/effortlessbuilding_cheap');
	event.player.tell(Text.lightPurple("You open up an Dormouse Illogic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_effortlessbuilding_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:effortlessbuilding/effortlessbuilding_decent');
	event.player.tell(Text.lightPurple("You open up an Horse Jig Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_effortlessbuilding_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:effortlessbuilding/effortlessbuilding_good');
	event.player.tell(Text.lightPurple("You open up an Alpaca Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


