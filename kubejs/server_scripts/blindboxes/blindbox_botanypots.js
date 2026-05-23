onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanypots_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanypots/botanypots_decent');
	event.player.tell(Text.lightPurple("You open up an Mink Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanypots_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanypots/botanypots_good');
	event.player.tell(Text.lightPurple("You open up an Hare Rescue Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


