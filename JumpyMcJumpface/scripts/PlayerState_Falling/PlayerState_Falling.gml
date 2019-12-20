grounded = false;
grav();
vsp += 3;
player_tile_collision();
x+=hsp;
y+=vsp;

if(grounded){
	player_state = PLAYERSTATE.DEAD;
}

sprite_index = player_falling;