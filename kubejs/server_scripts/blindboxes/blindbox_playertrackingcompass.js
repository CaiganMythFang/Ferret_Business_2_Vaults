onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_playertrackingcompass_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:playertrackingcompass/playertrackingcompass_decent');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Bounce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


