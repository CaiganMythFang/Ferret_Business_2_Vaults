onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_explorerscompass_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:explorerscompass/explorerscompass_decent');
	event.player.tell(Text.lightPurple("You open up an Monkey Clock Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


