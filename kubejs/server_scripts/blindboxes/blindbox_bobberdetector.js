onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_bobberdetector_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:bobberdetector/bobberdetector_decent');
	event.player.tell(Text.lightPurple("You open up an Capybara Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


