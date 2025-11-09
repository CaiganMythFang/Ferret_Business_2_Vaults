onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_bonsaitrees3_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:bonsaitrees3/bonsaitrees3_decent');
	event.player.tell(Text.lightPurple("You open up an Rabbit Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


