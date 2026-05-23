onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_literalskyblock_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:literalskyblock/literalskyblock_cheap');
	event.player.tell(Text.lightPurple("You open up an Capybara Dust Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


