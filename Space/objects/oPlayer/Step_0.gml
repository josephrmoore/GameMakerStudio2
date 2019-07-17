/// @description Player step code, collision, movement

if(hp<=0){
	state = PLAYERSTATE.DEAD;
}

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
	case PLAYERSTATE.DEAD:
		PlayerState_Dead();
}

switch (location){
	case PLAYERLOCATION.AIRBORNE:
		PlayerLocation_Airborne();
		break;
	case PLAYERLOCATION.GROUNDED:
		PlayerLocation_Grounded();
		break;
	case PLAYERLOCATION.SWIMMING:
		PlayerLocation_Swimming();
		break;
	case PLAYERLOCATION.HANGING:
		PlayerLocation_Hanging();
		break;
}

if(has_regen && alarm[2]<=0){
	alarm[2] = 60;
}

