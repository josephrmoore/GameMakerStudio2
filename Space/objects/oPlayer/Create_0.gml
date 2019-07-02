/// @description Insert description here
// You can write your code in this editor

state = PLAYERSTATE.FREE;

hitByAttack = ds_list_create();

enum PLAYERSTATE {
	FREE,
	SLASHING,
	BLOCKING,
	DASHING
}