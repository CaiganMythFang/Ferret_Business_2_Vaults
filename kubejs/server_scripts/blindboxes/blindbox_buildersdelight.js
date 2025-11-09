onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildersdelight_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildersdelight/buildersdelight_cheap');
	event.player.tell(Text.lightPurple("You open up an Jerboa Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_buildersdelight_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:buildersdelight/buildersdelight_decent');
	event.player.tell(Text.lightPurple("You open up an Tiger Leap Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


