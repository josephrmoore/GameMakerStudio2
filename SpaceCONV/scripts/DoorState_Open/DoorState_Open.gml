function DoorState_Open() {
	image_speed = 0;
	image_index = 7;
	if(alarm[0] == -1 || distance_to_object(oPlayer) < 64 ){
		alarm[0] = 60;
	}


}
