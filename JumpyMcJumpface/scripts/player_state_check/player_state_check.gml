if(grounded){
	if(hsp==0){
		player_state = PLAYERSTATE.IDLE;
	} else {
		player_state = PLAYERSTATE.WALKING;
	}
	if(place_meeting(x,y,oLadder)) {
		if(oGame.move_up || oGame.move_down){
			player_state = PLAYERSTATE.CLIMBING;
			show_debug_message("i am climbing and grounded");
		}
	}
} else {	
	if (place_meeting(x,y,oLadder) && ((oGame.move_left || oGame.move_right) && oGame.pressed_buttons_held)) {
		player_state = PLAYERSTATE.JUMPING;
	} else if(place_meeting(x,y,oLadder)) {
		player_state = PLAYERSTATE.CLIMBING;
		show_debug_message("i am climbing not grounded");
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


if (place_meeting(x,y,oVineNew)) {
	if(!oGame.pressed_buttons_held){
		oPlayer.player_state = PLAYERSTATE.SWINGING;
	}
}

//with(oPendulum){
//	if(distance_to_point(x,y) < 15 ){
//		other.player_state = PLAYERSTATE.SWINGING;
//		other.x = x;
//		other.y = y;
//		if(!oGame.pressed_buttons){

//		}
//	}
//}

//if(!oGame.buttons){
//	if (place_meeting(x,y,oVineNew)) {
//		player_state = PLAYERSTATE.SWINGING;
//	}
//}