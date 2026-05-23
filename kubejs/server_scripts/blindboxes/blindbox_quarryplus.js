onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_quarryplus_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:quarryplus/quarryplus_decent');
	event.player.tell(Text.lightPurple("You open up an Tiger Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_quarryplus_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:quarryplus/quarryplus_good');
	event.player.tell(Text.lightPurple("You open up an Mouse Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_quarryplus_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:quarryplus/quarryplus_amazing');
	event.player.tell(Text.lightPurple("You open up an Skunk Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


