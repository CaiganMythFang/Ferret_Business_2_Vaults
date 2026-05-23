onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_draconicevolution_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:draconicevolution/draconicevolution_cheap');
	event.player.tell(Text.lightPurple("You open up an Mink Bank Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_draconicevolution_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:draconicevolution/draconicevolution_decent');
	event.player.tell(Text.lightPurple("You open up an Terrier Slip Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_draconicevolution_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:draconicevolution/draconicevolution_good');
	event.player.tell(Text.lightPurple("You open up an Butterfly Hop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_draconicevolution_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:draconicevolution/draconicevolution_amazing');
	event.player.tell(Text.lightPurple("You open up an Earwig Run Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


