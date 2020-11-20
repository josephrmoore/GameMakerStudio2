function click_button_special(argument0) {
	var instance = argument0;
	if(!instance.pressed){
		instance.pressed = true;
		audio_play_sound(aButtonClick, 100, false);
	}
}