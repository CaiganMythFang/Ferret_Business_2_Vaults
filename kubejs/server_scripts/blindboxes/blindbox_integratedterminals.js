onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedterminals_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedterminals/integratedterminals_cheap');
	event.player.tell(Text.lightPurple("You open up a Panda Crime Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedterminals_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedterminals/integratedterminals_good');
	event.player.tell(Text.lightPurple("You open up a Binturong Rip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_integratedterminals_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:integratedterminals/integratedterminals_amazing');
	event.player.tell(Text.lightPurple("You open up a Rat Trot Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


