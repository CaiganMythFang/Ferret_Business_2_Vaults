onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appbot_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appbot/appbot_decent');
	event.player.tell(Text.lightPurple("You open up an Civet Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appbot_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appbot/appbot_good');
	event.player.tell(Text.lightPurple("You open up an Motmot Bop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appbot_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appbot/appbot_amazing');
	event.player.tell(Text.lightPurple("You open up an Dormouse Jump Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


