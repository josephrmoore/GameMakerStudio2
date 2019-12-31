grounded = false;
grav();
player_tile_collision();
player_object_collision(oThroughBlock);
player_object_collision(oElevator);
x+=hsp;
y+=vsp;

if(grounded){
	player_state = PLAYERSTATE.DEAD;
	audio_play_sound(aDead, 1000, false);
}

sprite_index = player_falling;