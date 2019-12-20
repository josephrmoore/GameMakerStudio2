grounded = true;
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
	}
}

if(abs(hsp)>0 && grounded){
	player_state = PLAYERSTATE.WALKING;
}

if(vsp < 0){
	player_state = PLAYERSTATE.JUMPING;
	launch_x = x;
	launch_y = y;
}

if(vsp < 0 && y > (fall_at+launch_y)){
	player_state = PLAYERSTATE.FALLING;
}

sprite_index = player_idle;