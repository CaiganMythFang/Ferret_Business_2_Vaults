onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ars_nouveau_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ars_nouveau/ars_nouveau_cheap');
	event.player.tell(Text.lightPurple("You open up an Raccoon Deal Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ars_nouveau_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ars_nouveau/ars_nouveau_decent');
	event.player.tell(Text.lightPurple("You open up an Llama Spin Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ars_nouveau_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ars_nouveau/ars_nouveau_good');
	event.player.tell(Text.lightPurple("You open up an Fox Flop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_ars_nouveau_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:ars_nouveau/ars_nouveau_amazing');
	event.player.tell(Text.lightPurple("You open up an Wolf Scroll Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


