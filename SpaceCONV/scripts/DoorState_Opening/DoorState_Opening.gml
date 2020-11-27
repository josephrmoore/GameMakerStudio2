function DoorState_Opening() {
	if(!oController.is_paused){
		if(image_speed != 1){
			image_index = 0;
			image_speed = 1;
		}
		if(image_index == 7){
			door_state = DOORSTATE.OPEN;	
		}
	}


}
