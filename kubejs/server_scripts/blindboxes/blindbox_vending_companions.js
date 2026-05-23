onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_vending_companions_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:vending_companions/vending_companions_amazing');
	event.player.tell(Text.lightPurple("You open up a Lombax Hammer Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


