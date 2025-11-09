onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_botanypotstiers_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:botanypotstiers/botanypotstiers_amazing');
	event.player.tell(Text.lightPurple("You open up an Capybara Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


