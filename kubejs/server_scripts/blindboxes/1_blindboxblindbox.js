onEvent('item.right_click', event => {
    
  if (event.item.id == 'kubejs:blindboxblindbox') {
    const player = event.player;
    
    if(!player.stages.has('story_early')) { 
        event.server.runCommandSilent('loot give ' + player + ' loot tfb2:blindboxes_earlygame');
        event.player.tell(text.lightPurple("You open up a Blind Box of Blind Boxes! Which blind box did YOU get?!"));
      }
    else if(!player.stages.has('story_mid')) { 
        event.server.runCommandSilent('loot give ' + player + ' loot tfb2:blindboxes_midgame');
        event.player.tell(text.lightPurple("You open up a Blind Box of Blind Boxes! Which blind box did YOU get?!"));
      }
    else if(!player.stages.has('story_late')) { 
        event.server.runCommandSilent('loot give ' + player + ' loot tfb2:blindboxes_lategame');
        event.player.tell(text.lightPurple("You open up a Blind Box of Blind Boxes! Which blind box did YOU get?!"));
      }
    else { 
        event.server.runCommandSilent('loot give ' + player + ' loot tfb2:blindboxes_starter');
        event.player.tell(text.lightPurple("You open up a Blind Box of Blind Boxes! Which blind box did YOU get?!"));
      };
    if (!event.player.isCreativeMode()) { //if creative mode dont consume; not necessary
      event.item.setCount(event.item.getCount() - 1)
    }
  }
});