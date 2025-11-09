onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersive_aircraft_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersive_aircraft/immersive_aircraft_cheap');
	event.player.tell(Text.lightPurple("You open up an Badger Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersive_aircraft_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersive_aircraft/immersive_aircraft_decent');
	event.player.tell(Text.lightPurple("You open up an Tiger Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


