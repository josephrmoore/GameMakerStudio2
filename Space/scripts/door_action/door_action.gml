var to_open = argument0;

if(to_open){
	if(door_state = DOORSTATE.CLOSED){
		open_door_animation();
		door_state= DOORSTATE.OPEN;
	}
}