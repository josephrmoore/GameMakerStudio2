var instance = argument0;
// click_button running
if(instance.button_state == BUTTONSTATE.UNCLICKED){
	oGame.buttons_pressed_this_level += 1;
	instance.button_state = BUTTONSTATE.CLICKED;
	audio_play_sound(aButtonClick, 100, false);
	if(oGame.current_room == "level2"){
		lvl2_swap();
	}
}
