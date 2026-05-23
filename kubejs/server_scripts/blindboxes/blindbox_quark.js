onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_quark_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:quark/quark_cheap');
	event.player.tell(Text.lightPurple("You open up an Dragon Hunt Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_quark_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:quark/quark_decent');
	event.player.tell(Text.lightPurple("You open up an Computer Mouse Work Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_quark_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:quark/quark_good');
	event.player.tell(Text.lightPurple("You open up an Tiger Trail Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


