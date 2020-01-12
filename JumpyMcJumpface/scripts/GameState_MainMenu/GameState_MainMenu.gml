var menu_items = menu_init();

if(controls_screen){
	
	var gp_num = gamepad_get_device_count();
	gamepad_plugged_in = false;
	for (var i = 0; i < gp_num; i++;){
		if (gamepad_is_connected(i)){
			gamepad_plugged_in = true;
		}
	}
	
	if(pressed_buttons){
		controls_screen = false;
	}
} else {
	
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
			load_room(lvl);
		}
		if(menu_items[main_menu_pos] == MAINMENUITEMS.CONTROLS){
			controls_screen = true;
		}
		if(menu_items[main_menu_pos] == MAINMENUITEMS.CONTINUE){
			// continue
			lvl = string("level" + string(last_level_finished+1));
			load_room(lvl);
		}
		if(menu_items[main_menu_pos] == MAINMENUITEMS.LEVELSELECT){
			// level select
			lvl = string("level" + string(level_select_level));
			load_room(lvl);
		}
	}
}