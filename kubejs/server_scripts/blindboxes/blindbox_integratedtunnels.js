onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedtunnels_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedtunnels/integratedtunnels_cheap');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Watch Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedtunnels_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedtunnels/integratedtunnels_decent');
	event.player.tell(Text.lightPurple("You open up an Alpaca Centered Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedtunnels_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedtunnels/integratedtunnels_good');
	event.player.tell(Text.lightPurple("You open up an Alpaca Bop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


