onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appmek_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appmek/appmek_cheap');
	event.player.tell(Text.lightPurple("You open up an Bee Spooky Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appmek_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appmek/appmek_decent');
	event.player.tell(Text.lightPurple("You open up an Panda Slide Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appmek_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appmek/appmek_good');
	event.player.tell(Text.lightPurple("You open up an Rabbit Plant Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_appmek_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:appmek/appmek_amazing');
	event.player.tell(Text.lightPurple("You open up an Mouse Peak Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


