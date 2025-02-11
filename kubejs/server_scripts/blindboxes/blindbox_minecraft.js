onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_minecraft_cheap') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/cheap');
    event.player.tell(text.lightPurple("You open up an Aardvark Check blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});

onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_minecraft_decent') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/decent');
    event.player.tell(text.lightPurple("You open up a Jaguar Tape blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});

onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_minecraft_good') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/good');
    event.player.tell(text.lightPurple("You open up an Ocelot File blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});

onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_minecraft_amazing') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:minecraft/amazing');
    event.player.tell(text.lightPurple("You open up a Fox Wag blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});