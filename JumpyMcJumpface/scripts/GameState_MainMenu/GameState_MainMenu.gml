if(pressed_down || pressed_up){
	if(main_menu_pos == 0 && last_level_finished>0){
		main_menu_pos = 1;
	} else {
		main_menu_pos = 0;
	}
}

if(pressed_buttons){
	var lvl = "level1";
	if(main_menu_pos == 1){
		lvl = string("level" + string(last_level_finished+1));
	}
	game_state = GAMESTATE.LEVELS;
	current_room = lvl;
	room_goto(asset_get_index(lvl));
}