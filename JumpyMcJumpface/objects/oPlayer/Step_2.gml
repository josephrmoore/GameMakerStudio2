/// @description Insert description here
// You can write your code in this editor


if(!rising && !is_paused){
	if(player_state != PLAYERSTATE.FALLING && player_state != PLAYERSTATE.DEAD){
		jumping();
	}
	switch (player_state) {
		case PLAYERSTATE.IDLE: 
			PlayerState_Idle();
			break;
		case PLAYERSTATE.WALKING: 
			PlayerState_Walking();
			break;
		case PLAYERSTATE.JUMPING: 
			PlayerState_Jumping();
			break;
		case PLAYERSTATE.CLIMBING: 
			PlayerState_Climbing();
			break;
		case PLAYERSTATE.FALLING: 
			PlayerState_Falling();
			break;
		case PLAYERSTATE.SWINGING: 
			PlayerState_Swinging();
			break;
		case PLAYERSTATE.SLIDING: 
			PlayerState_Sliding();
			break;
		case PLAYERSTATE.DEAD: 
			PlayerState_Dead();
			break;
	}
}