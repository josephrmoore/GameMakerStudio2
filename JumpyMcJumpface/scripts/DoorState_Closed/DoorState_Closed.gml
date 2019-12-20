if(oGame.buttons_pressed_this_level >= oGame.buttons_needed_this_level){
	door_state = DOORSTATE.OPENING;
	image_speed = 1;
}