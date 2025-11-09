onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_architects_palette_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:architects_palette/architects_palette_cheap');
	event.player.tell(Text.lightPurple("You open up an Fox Fly Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_architects_palette_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:architects_palette/architects_palette_decent');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Farm Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


