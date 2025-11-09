onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_blockcarpentry_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:blockcarpentry/blockcarpentry_cheap');
	event.player.tell(Text.lightPurple("You open up an Pangolin Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_blockcarpentry_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:blockcarpentry/blockcarpentry_decent');
	event.player.tell(Text.lightPurple("You open up an Rat Hug Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_blockcarpentry_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:blockcarpentry/blockcarpentry_good');
	event.player.tell(Text.lightPurple("You open up an Bear Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


