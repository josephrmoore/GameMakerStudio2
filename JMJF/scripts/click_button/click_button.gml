function click_button(argument0) {
	var instance = argument0;
	// click_button running
	if(!instance.pressed){
		oGame.buttons_pressed_this_level += 1;
		instance.pressed = true;
		audio_play_sound(aButtonClick, 100, false);
		// toggle slides/vines if game var is set
		if(oGame.slides_vines_togglable){
			switch_ladders_slides();
		}
		// toggle ledges with matching button ids
		with (oLedge){
			if(button_id != 0 && instance.button_id == button_id){
				activated = !activated;
			}
		}
		// toggle hazards with matching button ids
		with (oHazard){
			if(button_id != 0 && instance.button_id == button_id){
				activated = !activated;
			}
		}
	}
}