function lvl3_buttons(argument0) {
	var inst = argument0;

	switch(inst.button_id){
		case 1:
			with(oButton){
				if(button_id == 3){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 2:
			with(oButton){
				if(button_id == 8){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 3:
			with(oButton){
				if(button_id == 9){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 4:
			with(oButton){
				if(button_id == 5){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 5:
			with(oButton){
				if(button_id == 4){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 6:
			with(oButton){
				if(button_id == 7){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 7:
			with(oButton){
				if(button_id == 2){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 8:
			with(oButton){
				if(button_id == 6){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
		case 9:
			with(oButton){
				if(button_id == 1){
					if(button_state == BUTTONSTATE.CLICKED){
						button_state = BUTTONSTATE.UNCLICKED;
						oGame.buttons_pressed_this_level--;
					}
				}
			}
			break;
	}


}
