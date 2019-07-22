/// @description Insert description here
// You can write your code in this editor

enemy_state = ENEMYSTATE.WALKING;
if(facing_right){
	hsp = 2;
} else {
	hsp = -2;
}

enum ENEMYSTATE {
	FREE,
	DEAD,
	SHOOTING,
	WALKING
} 