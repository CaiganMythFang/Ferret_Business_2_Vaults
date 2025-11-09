onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_moremekanismprocessing_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:moremekanismprocessing/moremekanismprocessing_cheap');
	event.player.tell(Text.lightPurple("You open up an Toucan Drop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_moremekanismprocessing_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:moremekanismprocessing/moremekanismprocessing_decent');
	event.player.tell(Text.lightPurple("You open up an Jerboa Spin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


