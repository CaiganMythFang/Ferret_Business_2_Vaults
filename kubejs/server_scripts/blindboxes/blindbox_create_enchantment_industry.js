onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_create_enchantment_industry_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:create_enchantment_industry/create_enchantment_industry_cheap');
	event.player.tell(Text.lightPurple("You open up an Hyena Dance Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_create_enchantment_industry_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:create_enchantment_industry/create_enchantment_industry_decent');
	event.player.tell(Text.lightPurple("You open up a Kangaroo Drive Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_create_enchantment_industry_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:create_enchantment_industry/create_enchantment_industry_amazing');
	event.player.tell(Text.lightPurple("You open up an Wolf Crime Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


