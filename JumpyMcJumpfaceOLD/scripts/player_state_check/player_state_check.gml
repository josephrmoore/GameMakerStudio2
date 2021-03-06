function player_state_check() {
	if(grounded){
		if(hsp==0){
			player_state = PLAYERSTATE.IDLE;
		} else {
			player_state = PLAYERSTATE.WALKING;
		}
		if(place_meeting(x,y,oLadder)) {
			if(oGame.move_up || oGame.move_down){
				player_state = PLAYERSTATE.CLIMBING;
				//show_debug_message("i am climbing and grounded");
			}
		}
	} else {	
		if ((place_meeting(x,y,oLadder) || place_meeting(x,y,oVineNew)) && ((oGame.move_left || oGame.move_right) && oGame.pressed_buttons_held)) {
			player_state = PLAYERSTATE.JUMPING;
		} else if(place_meeting(x,y,oLadder)) {
			player_state = PLAYERSTATE.CLIMBING;
			//show_debug_message("i am climbing not grounded");
		} else if (place_meeting(x,y,oVineNew) && !oGame.pressed_buttons_held) {
			show_debug_message("player_state_check vine collision");
			oPlayer.player_state = PLAYERSTATE.SWINGING;	
		} else {
			player_state = PLAYERSTATE.JUMPING;
		}
	}

	if (place_meeting(x,y,oPole)) {
		if(oGame.move_down || (oPlayer.has_pole_climb && oGame.move_up)){
			player_state = PLAYERSTATE.SLIDING;
		}
	}

	if(y>launch_y+fall_at){
		player_state = PLAYERSTATE.FALLING;
		pop_up(1);
	}


	if((player_state == PLAYERSTATE.CLIMBING && oGame.move_down && tile_floor) || (player_state == PLAYERSTATE.SLIDING && oGame.move_down && tile_floor)){
		player_state = PLAYERSTATE.IDLE;
	}


}
