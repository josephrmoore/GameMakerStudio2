grounded = false;
grav();
player_object_collision(oThroughBlock);
player_object_collision(oElevator);
player_tile_collision();
x+=hsp;
y+=vsp;

if(grounded){
	player_state = PLAYERSTATE.DEAD;
}

sprite_index = player_falling;