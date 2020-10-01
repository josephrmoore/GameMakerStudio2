function GameState_MainMenu_Draw() {
	var menu_items = menu_init();

	draw_set_color(c_white);
	draw_set_font(f0);
	draw_text(650, 150, "Jumpy");
	draw_text(330, 300, "McJumpFace");

	if(oGame.controls_screen){
		var text_lines = [550,600,650,700,750,800,850];
		draw_set_font(f2);
		draw_set_color(c_white);
		draw_text(100, text_lines[0], "DIRECTION:");
		draw_text(100, text_lines[1], "JUMPING:");
		draw_text(100, text_lines[2], "PAUSE:");
		draw_text(100, text_lines[3], "RESET:");
		draw_text(100, text_lines[4], "DELETE ALL");
		draw_text(100, text_lines[5], "SAVE DATA:");
		draw_text(100, text_lines[6], "QUIT:");
		if(gamepad_plugged_in){
			// gamepad control scheme
			draw_text(600, text_lines[0], "GAMEPAD or L JOYSTICK");
			draw_text(600, text_lines[1], "ALL BUTTONS & TRIGGERS");
			draw_text(600, text_lines[2], "START");
			draw_text(600, text_lines[3], "EITHER JOYSTICK CLICK");
			draw_text(600, text_lines[5], "DELETE or BACKSPACE");
			draw_text(600, text_lines[6], "ESC");
		} else {
			// keyboard control scheme
			draw_text(600, text_lines[0], "WASD or ARROWS");
			draw_text(600, text_lines[1], "SPACEBAR");
			draw_text(600, text_lines[2], "RETURN or ENTER");
			draw_text(600, text_lines[3], "0");
			draw_text(600, text_lines[5], "DELETE or BACKSPACE");
			draw_text(600, text_lines[6], "ESC");
		}
	
	

	} else {
		draw_set_font(f2);

		var controls_y1 = 750;
		var controls_y2 = 750;

		if(menu_items[main_menu_pos] == MAINMENUITEMS.START){
			draw_set_color(c_yellow);
		}
		draw_text(840, 700, "START");
		draw_set_color(c_white);


		if(menu_items[main_menu_pos] == MAINMENUITEMS.CONTINUE){
			draw_set_color(c_yellow);
		}
		if(last_level_finished>0){
			draw_text(770, 750, "CONTINUE");
			controls_y1 += 50;
			controls_y2 += 50;
		}
		draw_set_color(c_white);

		if(menu_items[main_menu_pos] == MAINMENUITEMS.LEVELSELECT){

			draw_set_color(c_yellow);
			draw_text(1450, controls_y1, string(level_select_level));
		}
		if(finished_game){
			draw_text(680, controls_y1, "LEVEL SELECT");
			controls_y2 += 50;
		}
		draw_set_color(c_white);

		if(menu_items[main_menu_pos] == MAINMENUITEMS.CONTROLS){
			draw_set_color(c_yellow);
		}
		draw_text(770, controls_y2, "CONTROLS");
		draw_set_color(c_white);
	}


}
