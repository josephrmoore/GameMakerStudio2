/// @description Insert description here
// You can write your code in this editor

switch (avatar_state) {
	case AVATARSTATE.IDLE: 
		Avatar_Idle();
		break;
	case AVATARSTATE.WALKING: 
		Avatar_Walking();
		break;
	case AVATARSTATE.JUMPING: 
		Avatar_Jumping();
		break;
	case AVATARSTATE.VINE:
		Avatar_Vine();
		break;
	case AVATARSTATE.LADDER: 
		Avatar_Ladder();
		break;
	case AVATARSTATE.SLIDING: 
		Avatar_Sliding();
		break; 
	case AVATARSTATE.FALLING: 
		Avatar_Falling();
		break;
	case AVATARSTATE.DEAD: 
		Avatar_Dead();
		break;
}

if(grounded){
	if (hsp == 0) {
		avatar_state = AVATARSTATE.IDLE;
	} else {
		avatar_state = AVATARSTATE.WALKING;
	}
}



if(place_meeting(x,y,oLadder)){
	if(grounded){
		if(oGame.move_up || oGame.move_down){
			avatar_state = AVATARSTATE.LADDER;
			grounded = false;
		}
	} else {
		if(avatar_state != AVATARSTATE.JUMPING || (avatar_state == AVATARSTATE.JUMPING && (oGame.move_down || oGame.move_up))){
			avatar_state = AVATARSTATE.LADDER;
			if(!grounded){
				with (instance_place(x,y,oLadder)) {
					other.x = approach(other.x, x, 1);
				}
			}
		}
	}
}
