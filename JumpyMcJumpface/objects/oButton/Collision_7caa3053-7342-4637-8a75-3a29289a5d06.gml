/// @description Insert description here
// You can write your code in this editor
if(button_state == BUTTONSTATE.UNCLICKED){
	oGame.buttons_pressed_this_level += 1;
	button_state = BUTTONSTATE.CLICKED;
	audio_play_sound(aButtonClick, 100, false);
	if(oGame.current_room == "level2"){
		show_debug_message(string("BEGIN: " + string(oGame.lvl2_switch)));
		if(oGame.lvl2_switch){
			with(oLadder){
				// assigned ladder at birth
				if(alab){
					instance_change(oPole, false);
				}	
			}
			with(oLadderEnd){
				if(alab){
					instance_change(oPoleEnd, false);
				}
			}
		
			with(oPole){
				if(!alab){
					instance_change(oLadder, false);
				}
			}

			with(oPoleEnd){
				if(!alab){
					instance_change(oLadderEnd, false);
				}
			}
		} else {
			with(oLadder){
				if(!alab){
					instance_change(oPole, false);
				}	
			}
			with(oLadderEnd){
				if(!alab){
					instance_change(oPoleEnd, false);
				}
			}
		
			with(oPole){
				if(alab){
					instance_change(oLadder, false);
				}
			}

			with(oPoleEnd){
				if(alab){
					instance_change(oLadderEnd, false);
				}
			}
		}
		oGame.lvl2_switch = !oGame.lvl2_switch;
		show_debug_message(string("END: " + string(oGame.lvl2_switch)));
	}
}

oPlayer.button_collision = true;

if(oGame.current_room == "level9"){
	if(oPlayer.x > x-14){
		oPlayer.y = y;	
	}
} else {
	oPlayer.y = y-15;
}




//prevent button resurrections
if(oPlayer.player_state != PLAYERSTATE.FALLING && oPlayer.player_state != PLAYERSTATE.DEAD){
	oPlayer.player_state = PLAYERSTATE.IDLE;
}