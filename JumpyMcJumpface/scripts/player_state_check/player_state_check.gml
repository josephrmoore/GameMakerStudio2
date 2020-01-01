if(hsp==0 && grounded){
	player_state = PLAYERSTATE.IDLE;
}

if(abs(hsp)>0 && grounded){
	player_state = PLAYERSTATE.WALKING;
}

if(vsp < 0 || !grounded){
	player_state = PLAYERSTATE.JUMPING;
}

//if(!place_meeting(x,y,oLadder) && abs(vsp) > 0){
//	player_state = PLAYERSTATE.JUMPING;
//}

if (place_meeting(x,y,oLadder) && grounded) {
	if(oGame.move_up || oGame.move_down){
		player_state = PLAYERSTATE.CLIMBING;
		grounded = false;
	}
}


if (place_meeting(x,y,oLadder) && !grounded) {
	player_state = PLAYERSTATE.CLIMBING;
}

if (place_meeting(x,y,oPole)) {
	if(oGame.move_down || (oPlayer.has_pole_climb && oGame.move_up)){
		player_state = PLAYERSTATE.SLIDING;
		grounded = false;
	}
}

if(y>launch_y+fall_at){
	player_state = PLAYERSTATE.FALLING;
	pop_up(1);
}









