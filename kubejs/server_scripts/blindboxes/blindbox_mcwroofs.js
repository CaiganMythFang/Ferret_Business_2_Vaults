onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mcwroofs_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mcwroofs/mcwroofs_cheap');
	event.player.tell(Text.lightPurple("You open up an Binturong Drink Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_mcwroofs_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:mcwroofs/mcwroofs_decent');
	event.player.tell(Text.lightPurple("You open up an Kangaroo Link Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


