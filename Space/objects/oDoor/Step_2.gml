/// @description Insert description here
// You can write your code in this editor
switch (door_state) {
	case DOORSTATE.OPEN: 
		DoorState_Open();
		break;
	case DOORSTATE.CLOSED: 
		DoorState_Closed();
		break;
	case DOORSTATE.OPENING: 
		DoorState_Opening();
		break;
	case DOORSTATE.CLOSING: 
		DoorState_Closing();
		break;
}
