/// @description Insert description here
// You can write your code in this editor

enemy_state = default_state;
sprite_index = sprite;

if(enemy_state == ENEMYSTATE.WALKING || enemy_state == ENEMYSTATE.JUMPING){
	if(facing_right){
		hsp = 2;
	} else {
		hsp = -2;
	}
}

if(default_state == ENEMYSTATE.FLYING){
	hsp = random_range(-5,5);
	vsp = random_range(-5,5);
}

enum ENEMYSTATE {
	STATIONARY,
	WALKING,
	FLYING,
	JUMPING,
	SHOOTING,
	DEAD
} 