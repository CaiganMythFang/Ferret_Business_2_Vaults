onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_travel_anchors_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:travel_anchors/travel_anchors_decent');
	event.player.tell(Text.lightPurple("You open up an Culpeo Jump Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


