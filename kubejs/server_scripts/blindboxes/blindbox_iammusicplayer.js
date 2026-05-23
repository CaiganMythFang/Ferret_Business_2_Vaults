onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_iammusicplayer_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:iammusicplayer/iammusicplayer_decent');
	event.player.tell(Text.lightPurple("You open up an Civet Trot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


