// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function old_player_state_check() {
	if(grounded){
		if(hsp==0){
			avatar_state = AVATARSTATE.IDLE;
		} else {
			avatar_state = AVATARSTATE.WALKING;
		}
		if(place_meeting(x,y,oLadder)) {
			if(oGame.move_up || oGame.move_down){
				avatar_state = AVATARSTATE.LADDER;
				//show_debug_message("i am climbing and grounded");
			}
		}
	} else {	
		if (place_meeting(x,y,oLadder) && ((oGame.move_left || oGame.move_right) && oGame.pressed_buttons_held)) {
			avatar_state = AVATARSTATE.JUMPING;
		} else if(place_meeting(x,y,oLadder)) {
			avatar_state = AVATARSTATE.LADDER;
			//show_debug_message("i am climbing not grounded");
		} else {
			avatar_state = AVATARSTATE.JUMPING;
		}
	}

	if (place_meeting(x,y,oSlide)) {
		if(oGame.move_down){
			avatar_state = AVATARSTATE.SLIDING;
		}
	}

	//if(y>launch_y){
	//	avatar_state = AVATARSTATE.FALLING;
	//	pop_up(1);
	//}


	if((avatar_state == AVATARSTATE.VINE && oGame.move_down && grounded) || (avatar_state == AVATARSTATE.SLIDING && oGame.move_down && grounded)){
		avatar_state = AVATARSTATE.IDLE;
	}


}
