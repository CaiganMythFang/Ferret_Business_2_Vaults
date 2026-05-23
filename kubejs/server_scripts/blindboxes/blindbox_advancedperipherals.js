onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_advancedperipherals_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:advancedperipherals/advancedperipherals_cheap');
	event.player.tell(Text.lightPurple("You open up an Jerboa Haunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_advancedperipherals_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:advancedperipherals/advancedperipherals_decent');
	event.player.tell(Text.lightPurple("You open up an Mouse Scroll Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_advancedperipherals_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:advancedperipherals/advancedperipherals_good');
	event.player.tell(Text.lightPurple("You open up an Wolf Flop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_advancedperipherals_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:advancedperipherals/advancedperipherals_amazing');
	event.player.tell(Text.lightPurple("You open up an Civet Build Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


