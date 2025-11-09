onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_aeinfinitybooster_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:aeinfinitybooster/aeinfinitybooster_amazing');
	event.player.tell(Text.lightPurple("You open up an Toucan Illogic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


