/// @description Insert description here
// You can write your code in this editor
door_state = DOORSTATE.CLOSED;

if(left_wall){
	image_xscale = -1;
}

enum DOORSTATE {
	OPEN,
	CLOSED,
	OPENING,
	CLOSING
}