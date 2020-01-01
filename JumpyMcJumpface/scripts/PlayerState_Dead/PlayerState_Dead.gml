grav();
player_tile_collision();
player_object_collision(oDoor);
player_object_collision(oElevator);
player_object_collision(oThroughBlock);

if(grounded){
	sprite_index = player_dead;
	hsp = 0;
} else {
	sprite_index = player_falling;
}

y+=vsp;
x+=hsp;