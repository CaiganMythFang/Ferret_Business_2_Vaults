onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersive_paintings_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersive_paintings/immersive_paintings_cheap');
	event.player.tell(Text.lightPurple("You open up an Mouse Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


