onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_scannable_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:scannable/scannable_good');
	event.player.tell(Text.lightPurple("You open up an Civet Fancy Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_scannable_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:scannable/scannable_amazing');
	event.player.tell(Text.lightPurple("You open up an Iguana Talk Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


