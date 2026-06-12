onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:grist_candy_bag') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:grist_candy_bag');
	event.player.tell(Text.lightPurple("You tear open a bag of Grist Candy!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


