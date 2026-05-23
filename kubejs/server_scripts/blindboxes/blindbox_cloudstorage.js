onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cloudstorage_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cloudstorage/cloudstorage_cheap');
	event.player.tell(Text.lightPurple("You open up an Otter Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_cloudstorage_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:cloudstorage/cloudstorage_decent');
	event.player.tell(Text.lightPurple("You open up an Motmot Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


