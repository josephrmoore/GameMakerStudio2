var to_open = argument0;

if(to_open){
	if(door_state == DOORSTATE.CLOSED || door_state == DOORSTATE.CLOSING){
		door_state = DOORSTATE.OPENING;
	}
}