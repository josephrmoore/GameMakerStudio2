/// @description Insert description here
// You can write your code in this editor

state = PLAYERSTATE.FREE;
location = PLAYERLOCATION.AIRBORNE;

hitByAttack = ds_list_create();

enum PLAYERSTATE {
	FREE,
	SLASHING,
	BLOCKING,
	DASHING,
	DUCKING,
	DEAD
}

enum PLAYERLOCATION {
	GROUNDED,
	AIRBORNE,
	SWIMMING,
	HANGING
}