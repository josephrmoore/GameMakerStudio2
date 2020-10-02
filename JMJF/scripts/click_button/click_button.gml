function click_button(argument0) {
	var instance = argument0;
	// click_button running
	if(!instance.pressed){
		oGame.buttons_pressed_this_level += 1;
		instance.pressed = true;
		audio_play_sound(aButtonClick, 100, false);
	}
}