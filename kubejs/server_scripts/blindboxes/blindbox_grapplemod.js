onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_grapplemod_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:grapplemod/grapplemod_decent');
	event.player.tell(Text.lightPurple("You open up an Horse Spin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_grapplemod_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:grapplemod/grapplemod_good');
	event.player.tell(Text.lightPurple("You open up an Genet Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


