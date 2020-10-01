function main_menu_step() {
	if(oGame.move_down || oGame.move_up){
		if(main_menu_pos == 0 && oGame.last_level_finished>0){
			main_menu_pos = 1;
		} else {
			main_menu_pos = 0;
		}
	}

	if(oGame.buttons){
		if(main_menu_pos == 0){
			room_goto(level1);
		} else {
			var lvl = string("level" + string(oGame.last_level_finished+1));
			room_goto(asset_get_index(lvl));
		}
		oGame.game_state = GAMESTATE.LEVELS;
	}


}
