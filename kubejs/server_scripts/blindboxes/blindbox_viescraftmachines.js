onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_viescraftmachines_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:viescraftmachines/viescraftmachines_cheap');
	event.player.tell(Text.lightPurple("You open up an Genet Dance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_viescraftmachines_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:viescraftmachines/viescraftmachines_decent');
	event.player.tell(Text.lightPurple("You open up an Culpeo Strike Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


