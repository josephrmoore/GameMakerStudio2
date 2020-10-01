function DoorState_Closed() {
	if(oGame.buttons_pressed_this_level >= oGame.buttons_needed_this_level){
		door_state = DOORSTATE.OPENING;
		image_speed = 1;
		audio_play_sound(aDoorOpen, 1000, false);
	}


}
