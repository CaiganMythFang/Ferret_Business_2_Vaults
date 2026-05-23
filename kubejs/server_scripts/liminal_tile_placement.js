onEvent('block.right_click', event => {
    if(event.item.id != 'tfb2:liminal_tile') return
    if(event.block.y >= 73 && event.block.y <= 80) return
    else {
        event.player.tell('The Liminal Tile can only be placed between Y level 73 and 80')
        event.cancel()
    }
});