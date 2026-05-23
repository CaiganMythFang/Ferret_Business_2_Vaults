onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_summoningrituals_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:summoningrituals/summoningrituals_decent');
	event.player.tell(Text.lightPurple("You open up an Iguana Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_summoningrituals_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:summoningrituals/summoningrituals_good');
	event.player.tell(Text.lightPurple("You open up an Chinchilla Trot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


