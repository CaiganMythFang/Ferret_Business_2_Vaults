onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_create_mechanical_extruder_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:create_mechanical_extruder/create_mechanical_extruder_good');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Spring Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


