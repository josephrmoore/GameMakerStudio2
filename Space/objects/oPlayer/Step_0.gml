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
	case PLAYERSTATE.DASHING: 
		PlayerState_Dashing();
		break;
}

if(hp<=0){
	room_goto(dead);
}