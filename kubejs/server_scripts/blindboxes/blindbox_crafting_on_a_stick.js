onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_crafting_on_a_stick_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:crafting_on_a_stick/crafting_on_a_stick_cheap');
	event.player.tell(Text.lightPurple("You open up an Butterfly Scrungle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


