onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_simplylight_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:simplylight/simplylight_decent');
	event.player.tell(Text.lightPurple("You open up an Jerboa Scrungle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


