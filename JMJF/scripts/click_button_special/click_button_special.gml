function click_button_special(argument0) {
	var instance = argument0;
	if(!instance.pressed){
		instance.pressed = true;
		if(instance.button_state){
			instance.button_state = 0;
		} else {
			instance.button_state = 1;
		}
		audio_play_sound(aButtonClick, 100, false);
		if(oGame.slides_vines_togglable){
			switch_ladders_slides();
		}
	}
}