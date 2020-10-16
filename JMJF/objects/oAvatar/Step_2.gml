/// @description Insert description here
// You can write your code in this editor

// check for correct state
avatar_state_check();
//show_debug_message(avatar_state);
// change the state to the current state
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
	case AVATARSTATE.WIN: 
		Avatar_Win();
		break;
}

if(is_paused){
	oAvatar.image_speed = 0;
}

//show_debug_message("avatar state");
//show_debug_message(avatar_state);

//show_debug_message(grounded);