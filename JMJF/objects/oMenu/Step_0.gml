/// @description Insert description here
// You can write your code in this editor
if(is_active){
	num_choices = array_length(all_menus[menu_id]);
	
	if(menu_id != MENUS.MAIN || (menu_id == MENUS.MAIN && !oGame.confirm_active)){
		if(oGame.menu_up){
			if(selected_option == 0){
				selected_option = num_choices-1;
			} else {
				selected_option -= 1;
			}
		}
	
		if(oGame.menu_down){
			if(selected_option == (num_choices-1)){
				selected_option = 0;
			} else {
				selected_option += 1;
			}
		}
	}
	current_text = all_menus[menu_id][selected_option];
	
	if(oGame.menu_enter){
		switch (menu_id){
			case MENUS.MAIN:
				if(!oGame.confirm_active){
					switch (selected_option){
						case 0:
							// START
							oGame.current_lives = 3;
							room_goto(level1);
							break;
						case 1:
							// LEVEL SELECT
							room_goto(levelsMenu);
							break;
						case 2:
							// OPTIONS
							room_goto(optionsMenu);
							break;
						case 3:
							// EXIT
							confirm_quit();
							break;
					}
				}
				break;
			case MENUS.RESTART:
				switch(selected_option){
					case 0:
						// DO OVER
						oGame.is_paused = false;
						oGame.current_lives = 3;
						pause_everything(oGame.is_paused);
						room_restart();
						break;
					case 1:
						// GO HOME
						oGame.is_paused = false;
						pause_everything(oGame.is_paused);
						room_goto(mainMenu);
						break;
				}
				break;
			case MENUS.PAUSE:
				switch(selected_option){
					case 0:
						// KEEP PLAYING
						oGame.is_paused = false;
						pause_everything(oGame.is_paused);
						instance_destroy(oMenu);
						break;
					case 1:
						// DO OVER
						oGame.is_paused = false;
						oGame.current_lives = 3;
						pause_everything(oGame.is_paused);
						room_restart();
						break;
					case 2:
						// GO HOME
						oGame.is_paused = false;
						pause_everything(oGame.is_paused);
						room_goto(mainMenu);
						break;
				}
				break;
			case MENUS.OPTIONS:
				switch(selected_option){
					case 0:
						// ABOUT
						room_goto(aboutMenu);
						break;
					case 1:
						// BACK
						room_goto(mainMenu);
						break;
				}
				break;
			case MENUS.LEVELS:
				switch(selected_option){
					case 0:
						// PLAY
						// check highest level attained
						oGame.current_lives = 3;
						var mural = oLevelMural.current_level+1;
						if(mural <= oGame.highest_level){
							switch(mural){
								case 1:
									room_goto(level1);
									break;
								case 2:
									room_goto(level2);
									break;
								case 3:
									room_goto(level3);
									break;
								case 4:
									room_goto(level4);
									break;
								case 5:
									room_goto(level5);
									break;
								case 6:
									room_goto(level6);
									break;
								case 7:
									room_goto(level7);
									break;
								case 8:
									room_goto(level8);
									break;
								case 9:
									room_goto(level9);
									break;
								
							}	
						}
						break;
					case 1:
						// BACK
						room_goto(mainMenu);
						break;
				}
				break;
			case MENUS.ABOUT:
				switch(selected_option){
					case 0:
						// BACK
						room_goto(optionsMenu);
						break;
				}
				break;
			case MENUS.CONFIRM:
				switch(selected_option){
					case 0:
						// CANCEL
						oGame.confirm_active = false;
						instance_destroy();
						break;
					case 1:
						// CONFIRM
						game_end();
						break;
				}
				break;
		}
	}
	
}