onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_woldsvaults_cheap') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:woldsvaults/woldsvaults_cheap');
	event.player.tell(Text.lightPurple("You open up an Capybara Illogic Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_woldsvaults_decent') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:woldsvaults/woldsvaults_decent');
	event.player.tell(Text.lightPurple("You open up an Iguana Build Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_woldsvaults_good') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:woldsvaults/woldsvaults_good');
	event.player.tell(Text.lightPurple("You open up an Lizard Chain Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});

onEvent('item.right_click', event => {
	
  if (event.item.id == 'tfb2:blindbox_woldsvaults_amazing') {
	  
	event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:woldsvaults/woldsvaults_amazing');
	event.player.tell(Text.lightPurple("You open up an Marten Boop Blind Box!"));
	  
	if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
	  event.item.setCount(event.item.getCount() - 1)
	}
  }
});


