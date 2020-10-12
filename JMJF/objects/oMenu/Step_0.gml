/// @description Insert description here
// You can write your code in this editor
if(is_active){
	num_choices = array_length(all_menus[menu_id]);
	
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
	
	current_text = all_menus[menu_id][selected_option];
	
	if(oGame.menu_enter){
		switch (menu_id){
			case MENUS.MAIN:
				switch (selected_option){
					case 0:
						// START
						room_goto(level1);
						break;
					case 1:
						// LEVEL SELECT
						//level_select_menu();
						break;
					case 2:
						// OPTIONS
						//options_menu();
						break;
					case 3:
						// EXIT
						game_end();
						break;
				}
				break;
			case MENUS.RESTART:
				switch(selected_option){
					case 0:
						// RESTART
						room_restart();
						break;
					case 1:
						// QUIT
						//room_goto(mainMenu);
						break;
				}
				break;
			case MENUS.PAUSE:
				switch(selected_option){
					case 0:
						// BACK
						break;
					case 1:
						// RESTART
						break;
					case 2:
						// QUIT
						break;
				}
				break;
			case MENUS.OPTIONS:
				switch(selected_option){
					case 0:
						// CONTROLS
						break;
					case 1:
						// DISPLAY
						break;
					case 2:
						// ABOUT
						break;
				}
				break;
			case MENUS.LEVELSELECT:
				switch(selected_option){
					case 0:
						// 1
						break;
					case 1:
						// 2
						break;
					case 2:
						// 3
						break;
					case 3:
						// 4
						break;
					case 4:
						// 5
						break;
					case 5:
						// 6
						break;
					case 6:
						// 7
						break;
					case 7:
						// 8
						break;
					case 8:
						// 9
						break;
				}
				break;
			case MENUS.CONTROLS:
				switch(selected_option){
					case 0:
						// BACK
						break;
					case 1:
						// RESTART
						break;
					case 2:
						// QUIT
						break;
				}
				break;
			case MENUS.DISPLAY:
				switch(selected_option){
					case 0:
						// RESIZE
						break;
					case 1:
						// BACK
						break;
				}
				break;
			case MENUS.ABOUT:
				switch(selected_option){
					case 0:
						// BACK
						break;
				}
				break;
			case MENUS.REMAP:
				switch(selected_option){
					case 0:
						// SAVE CHANGES
						break;
					case 1:
						// BACK
						break;
				}
				break;
			case MENUS.CONFIRM:
				switch(selected_option){
					case 0:
						// CANCEL
						break;
					case 1:
						// CONFIRM
						break;
				}
				break;
		}
	}
	
}