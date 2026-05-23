onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_elevatorid_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:elevatorid/elevatorid_decent');
	event.player.tell(Text.lightPurple("You open up an Hamster Context Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


