/// @description Player step code, collision, movement

switch (state) {
	case PLAYERSTATE.FREE: 
		PlayerState_Free();
		break;
	case PLAYERSTATE.SLASHING: 
		PlayerState_Slashing();
		break;
	case PLAYERSTATE.BLOCKING: 
		PlayerState_Blocking();
		break;
	case PLAYERSTATE.DUCKING: 
		PlayerState_Ducking();
		break;
	case PLAYERSTATE.DASHING: 
		PlayerState_Dashing();
		break;
}

if(has_regen && alarm[2]<=0){
	alarm[2] = 60;
}

if(hp<=0){
	room_goto(dead);
}