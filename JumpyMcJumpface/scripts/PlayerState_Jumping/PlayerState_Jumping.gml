grounded = false;
grav();
left_right();
jumping();
player_object_collision(oDoor);
player_object_collision(oElevator);
player_tile_collision();
x+=hsp;
y+=vsp;

if (place_meeting(x,y,oLadder)) {
	if(oGame.move_up || oGame.move_down){
		player_state = PLAYERSTATE.CLIMBING;
		grounded = false;
	}
}

if(abs(hsp)>0 && grounded){
	player_state = PLAYERSTATE.WALKING;
}

if(hsp==0 && grounded){
	player_state = PLAYERSTATE.IDLE;
}

if(y>launch_y+fall_at){
	player_state = PLAYERSTATE.FALLING;
}

sprite_index = player_jumping;