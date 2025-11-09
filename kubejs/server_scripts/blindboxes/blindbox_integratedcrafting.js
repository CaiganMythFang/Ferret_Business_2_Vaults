onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedcrafting_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedcrafting/integratedcrafting_decent');
	event.player.tell(Text.lightPurple("You open up an Pangolin Build Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedcrafting_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedcrafting/integratedcrafting_good');
	event.player.tell(Text.lightPurple("You open up an Rat Love Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


