/// @description Insert description here
// You can write your code in this editor
door_state = DOORSTATE.CLOSED;
image_index = 0;
image_speed = 0;

if(left_wall){
	image_xscale = -1;
}

enum DOORSTATE {
	OPEN,
	CLOSED
}