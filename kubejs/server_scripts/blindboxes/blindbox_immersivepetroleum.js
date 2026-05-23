onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersivepetroleum_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersivepetroleum/immersivepetroleum_cheap');
	event.player.tell(Text.lightPurple("You open up an Capybara Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersivepetroleum_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersivepetroleum/immersivepetroleum_decent');
	event.player.tell(Text.lightPurple("You open up an Fox Steal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_immersivepetroleum_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:immersivepetroleum/immersivepetroleum_good');
	event.player.tell(Text.lightPurple("You open up an Binturong Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


