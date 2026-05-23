onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_easy_villagers_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:easy_villagers/easy_villagers_cheap');
	event.player.tell(Text.lightPurple("You open up an Mink Hug Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_easy_villagers_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:easy_villagers/easy_villagers_decent');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Glare Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_easy_villagers_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:easy_villagers/easy_villagers_good');
	event.player.tell(Text.lightPurple("You open up an Civet Fierce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


