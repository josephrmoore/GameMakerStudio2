var menu_items;
menu_items[0] = MAINMENUITEMS.START;

if(last_level_finished>0){
	menu_items[1] = MAINMENUITEMS.CONTINUE;
	if(finished_game){
		menu_items[2] = MAINMENUITEMS.LEVELSELECT;
	}
} else {
	if(finished_game){
		menu_items[1] = MAINMENUITEMS.LEVELSELECT;
	}
}


if(pressed_down){
	main_menu_pos++;
	main_menu_pos = clamp(main_menu_pos, 0, array_length_1d(menu_items)-1);
	show_debug_message(main_menu_pos);
}

if(pressed_up){
	main_menu_pos--;
	main_menu_pos = clamp(main_menu_pos, 0, array_length_1d(menu_items)-1);
	show_debug_message(main_menu_pos);
}

if(finished_game && menu_items[main_menu_pos] == MAINMENUITEMS.LEVELSELECT){
	if(pressed_left){
		level_select_level++;
		level_select_level = clamp(level_select_level,1,9);
	}
	if(pressed_right){
		level_select_level--;
		level_select_level = clamp(level_select_level,1,9);
	}
}

if(pressed_buttons){
	// start (default)
	var lvl = "level1";
	if(menu_items[main_menu_pos] == MAINMENUITEMS.START){
		if file_exists("jumpydata.sav"){
			file_delete("jumpydata.sav");
			show_debug_message("save deleted");
		}
	}
	if(menu_items[main_menu_pos] == MAINMENUITEMS.CONTINUE){
		// continue
		lvl = string("level" + string(last_level_finished+1));
	}
	if(menu_items[main_menu_pos] == MAINMENUITEMS.LEVELSELECT){
		// level select
		lvl = string("level" + string(level_select_level));
		oPlayer.has_double_jump = true;
		oPlayer.has_high_jump = true;
		oPlayer.has_parachute = true;
		oPlayer.has_pole_climb = true;
	}
	game_state = GAMESTATE.LEVELS;
	current_room = lvl;
	room_goto(asset_get_index(lvl));
}