onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanismgenerators_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanismgenerators/mekanismgenerators_cheap');
	event.player.tell(Text.lightPurple("You open up an Chinchilla Fierce Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanismgenerators_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanismgenerators/mekanismgenerators_decent');
	event.player.tell(Text.lightPurple("You open up an Llama Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanismgenerators_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanismgenerators/mekanismgenerators_good');
	event.player.tell(Text.lightPurple("You open up an Iguana Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mekanismgenerators_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mekanismgenerators/mekanismgenerators_amazing');
	event.player.tell(Text.lightPurple("You open up an Hamster Crime Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


