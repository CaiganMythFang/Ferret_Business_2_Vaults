onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_technoblade_plushies_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:technoblade_plushies/technoblade_plushies_cheap');
	event.player.tell(Text.lightPurple("You open up an Frog Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_technoblade_plushies_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:technoblade_plushies/technoblade_plushies_decent');
	event.player.tell(Text.lightPurple("You open up an Mouse Smoke Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


