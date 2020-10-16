// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function avatar_state_check(){
	if(avatar_state != AVATARSTATE.WIN && avatar_state != AVATARSTATE.FALLING && avatar_state != AVATARSTATE.DEAD){
		if(grounded){
			if (hsp == 0) {
				avatar_state = AVATARSTATE.IDLE;
			} else {
				show_debug_message("assigned walking here");
				avatar_state = AVATARSTATE.WALKING;
			}
		}

		if(place_meeting(x,y,oLadder)){
			if(grounded){
				avatar_state = AVATARSTATE.IDLE;
				if(oGame.move_up || oGame.move_down){
					avatar_state = AVATARSTATE.LADDER;
				}
			} else {
				if(avatar_state != AVATARSTATE.JUMPING || (avatar_state == AVATARSTATE.JUMPING && (oGame.move_down || oGame.move_up))){
					avatar_state = AVATARSTATE.LADDER;
					if(!grounded){
						with (instance_place(x,y,oLadder)) {
							other.x = approach(other.x, x, 0.4);
						}
					}
				}
			}
		}

		if(place_meeting(x,y,oVine)){
			if(grounded){
				if(oGame.move_up){
					avatar_state = AVATARSTATE.VINE;
				}
			} else {
				if(avatar_state != AVATARSTATE.JUMPING || (avatar_state == AVATARSTATE.JUMPING && oGame.move_up)){
					avatar_state = AVATARSTATE.VINE;
					with (instance_place(x,y,oVine)) {
						other.x = approach(other.x, x, 0.4);
					}
				}
			}
		}

		if(place_meeting(x,y,oSlide)){
			if(grounded){
				if(oGame.move_down){
					avatar_state = AVATARSTATE.SLIDING;
				}
			} else {
				if(avatar_state != AVATARSTATE.JUMPING || (avatar_state == AVATARSTATE.JUMPING && oGame.move_down)){
					avatar_state = AVATARSTATE.SLIDING;
					with (instance_place(x,y,oSlide)) {
						other.x = approach(other.x, x, 0.4);
					}
				}
			}
		}
	}
	
	if((avatar_state == AVATARSTATE.LADDER && oGame.move_down && grounded)){
		avatar_state = AVATARSTATE.IDLE;
	}
}