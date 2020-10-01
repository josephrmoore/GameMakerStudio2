function level_start() {
	buttons_needed_this_level = instance_number(oButton);
	buttons_pressed_this_level = 0;

	if(oGame.current_room != "level1"){
		LoadPlayerStats("jumpydata.sav");
	}

	if(oPlayer.has_double_jump){
		oPlayer.max_jumps = 2;
	}

	timeline_index = tLevelIntro;
	if(died_yet){
		timeline_position = 299;
	} else {
		timeline_position = 0;
	}
	timeline_running = true;


}
