/// @description Player step code, collision, movement

if(hp<=0){
	state = PLAYERSTATE.DEAD;
}

if(has_regen && mod_regen && alarm[2]<=0 && hp<max_hp){
	alarm[2] = 60;
}

if(has_shield && mod_shield){
	
}

		input();
		left_right();
		grav();
		jumping();
		player_tile_collision();
		x += hsp;
		y += vsp;
		

switch (state) {
	case PLAYERSTATE.FREE: 
		//PlayerState_Free();
		break;
	case PLAYERSTATE.SLASHING: 
//		PlayerState_Slashing();
		break;
	case PLAYERSTATE.BLOCKING: 
//		PlayerState_Blocking();
		break;
	case PLAYERSTATE.DUCKING: 
//		PlayerState_Ducking();
		break;
	case PLAYERSTATE.DASHING: 
//		PlayerState_Dashing();
		break;
	case PLAYERSTATE.DEAD:
//		PlayerState_Dead();
}

switch (location){
	case PLAYERLOCATION.AIRBORNE:
//		PlayerLocation_Airborne();
		break;
	case PLAYERLOCATION.GROUNDED:
//		PlayerLocation_Grounded();
		break;
	case PLAYERLOCATION.SWIMMING:
//		PlayerLocation_Swimming();
		break;
	case PLAYERLOCATION.HANGING:
//		PlayerLocation_Hanging();
		break;
}
/*
if(oController.is_paused){
	image_speed = 0;
} else {
	image_speed = 1;
}

*/