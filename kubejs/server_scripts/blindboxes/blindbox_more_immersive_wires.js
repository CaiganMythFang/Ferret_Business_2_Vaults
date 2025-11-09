onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_more_immersive_wires_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:more_immersive_wires/more_immersive_wires_decent');
	event.player.tell(Text.lightPurple("You open up an Meerkat Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


