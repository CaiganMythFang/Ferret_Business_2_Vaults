onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_lightmanscurrency_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:lightmanscurrency/lightmanscurrency_cheap');
	event.player.tell(Text.lightPurple("You open up an Hippopotamus Jig Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_lightmanscurrency_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:lightmanscurrency/lightmanscurrency_decent');
	event.player.tell(Text.lightPurple("You open up an Hyena Talk Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_lightmanscurrency_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:lightmanscurrency/lightmanscurrency_good');
	event.player.tell(Text.lightPurple("You open up an Genet Oasis Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_lightmanscurrency_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:lightmanscurrency/lightmanscurrency_amazing');
	event.player.tell(Text.lightPurple("You open up an Raccoon Dance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


