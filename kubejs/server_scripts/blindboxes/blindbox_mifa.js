onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mifa_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mifa/mifa_good');
	event.player.tell(Text.lightPurple("You open up an Dragon Talk Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mifa_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mifa/mifa_amazing');
	event.player.tell(Text.lightPurple("You open up an Dormouse Slide Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


