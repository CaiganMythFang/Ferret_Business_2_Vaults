onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_megacells_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:megacells/megacells_decent');
	event.player.tell(Text.lightPurple("You open up an Hare Inject Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_megacells_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:megacells/megacells_good');
	event.player.tell(Text.lightPurple("You open up an Fox Shoot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_megacells_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:megacells/megacells_amazing');
	event.player.tell(Text.lightPurple("You open up an Gryphon Inject Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


