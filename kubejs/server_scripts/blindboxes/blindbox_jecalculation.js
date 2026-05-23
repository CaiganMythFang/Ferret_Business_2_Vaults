onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_jecalculation_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:jecalculation/jecalculation_decent');
	event.player.tell(Text.lightPurple("You open up an Pangolin Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


