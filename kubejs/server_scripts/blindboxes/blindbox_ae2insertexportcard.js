onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ae2insertexportcard_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ae2insertexportcard/ae2insertexportcard_amazing');
	event.player.tell(Text.lightPurple("You open up an Cat Copy Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


