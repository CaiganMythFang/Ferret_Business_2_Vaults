onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_magic_vibe_decorations_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:magic_vibe_decorations/magic_vibe_decorations_cheap');
	event.player.tell(Text.lightPurple("You open up an Fennec Horror Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_magic_vibe_decorations_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:magic_vibe_decorations/magic_vibe_decorations_decent');
	event.player.tell(Text.lightPurple("You open up an Rat Peak Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


