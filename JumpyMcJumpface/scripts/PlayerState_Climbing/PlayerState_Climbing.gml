grounded = false;
left_right();
jumping();
if(place_meeting(x,y,oLadder)){
	climb();
} else {
	grav();
}
x+=hsp;
y+=vsp;

if(abs(hsp)>0 && grounded){
	player_state = PLAYERSTATE.WALKING;
}

if(hsp==0 && grounded){
	player_state = PLAYERSTATE.IDLE;
}


if(!place_meeting(x,y,oLadder) && abs(vsp) > 0){
	player_state = PLAYERSTATE.JUMPING;
	launch_x = x;
	launch_y = y;
}

sprite_index = player_climbing;