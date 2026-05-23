onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_moreburners_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:moreburners/moreburners_cheap');
	event.player.tell(Text.lightPurple("You open up an Hound Fry Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_moreburners_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:moreburners/moreburners_decent');
	event.player.tell(Text.lightPurple("You open up an Swan Clean Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});