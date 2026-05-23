onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_multistorage_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:multistorage/multistorage_cheap');
	event.player.tell(Text.lightPurple("You open up an Motmot Fierce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_multistorage_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:multistorage/multistorage_decent');
	event.player.tell(Text.lightPurple("You open up an Bear Scrungle Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


