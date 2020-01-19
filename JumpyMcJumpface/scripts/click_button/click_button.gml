var instance = argument0;
// click_button running
if(instance.button_state == BUTTONSTATE.UNCLICKED){
	oGame.buttons_pressed_this_level += 1;
	instance.button_state = BUTTONSTATE.CLICKED;
	audio_play_sound(aButtonClick, 100, false);
	if(oGame.current_room == "level2"){
		lvl2_swap();
	}
	if(oGame.current_room == "level5"){
		lvl5_cannons(instance.button_id);
	}
	if(oGame.current_room == "level6"){
		lvl6_blocks();
	}
	//add_cannon(round(random_range(0,1)));
	//add_cannon(round(random_range(0,1)));
	//delete_cannon();
}
