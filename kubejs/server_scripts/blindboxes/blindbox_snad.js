onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_snad_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:snad/snad_decent');
	event.player.tell(Text.lightPurple("You open up an Tiger Spin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


