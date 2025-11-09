onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_fairylights_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:fairylights/fairylights_cheap');
	event.player.tell(Text.lightPurple("You open up an Butterfly Fancy Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


