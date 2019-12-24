/// @description Insert description here
// You can write your code in this editor

enum PLAYERSTATE {
	IDLE,
	WALKING,
	JUMPING,
	CLIMBING,
	FALLING,
	SWINGING,
	DEAD
}

player_state = PLAYERSTATE.IDLE;
launch_x = x;
launch_y = y+1000;