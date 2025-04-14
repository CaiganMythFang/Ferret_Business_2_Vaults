onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_the_vault_cheap') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/cheap');
    event.player.tell(Text.lightPurple("You open up an Weasel Jump blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});

onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_the_vault_decent') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/decent');
    event.player.tell(Text.lightPurple("You open up a Bat Scroll blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});

onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_the_vault_good') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/good');
    event.player.tell(Text.lightPurple("You open up an Aardvark Spin blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});

onEvent('item.right_click', event => {
    
  if (event.item.id == 'tfb2:blindbox_the_vault_amazing') {
      
    event.server.runCommandSilent('loot give ' + event.getEntity() + ' loot tfb2:the_vault/amazing');
    event.player.tell(Text.lightPurple("You open up a Fennec Bop blind box!"));
      
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});