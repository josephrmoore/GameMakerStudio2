/// @description Insert description here
// You can write your code in this editor
input();
		
if (os_is_paused()){
	is_paused = true;
	last_screen_state = screen_state;
	screen_state = SCREENSTATE.PAUSED;
	audio_pause_all();
}

if(screen_state == SCREENSTATE.PAUSED){
	//audio_pause_all();
	if(key_down_pressed){
		if(pause_screen_selected < 2){
			pause_screen_selected++;
		} else {
			pause_screen_selected = 0;
		}
	}
	if(key_up_pressed){
		if(pause_screen_selected > 0){
			pause_screen_selected--;
		} else {
			pause_screen_selected = 2;
		}
	}
	if(key_jump_pressed || key_shoot_pressed || key_slash || key_missile_pressed || key_pause){
		if(pause_screen_selected == 0){
			is_paused = false;
			audio_resume_all();
			screen_state = last_screen_state;
		} else if (pause_screen_selected == 1){
			screen_state = SCREENSTATE.OPTIONS;
		} else if (pause_screen_selected == 2){
			room_goto(title);
			is_paused = false;
			pause_screen_selected = 0;
			screen_state = SCREENSTATE.TITLE;
		}
	}
} else if (screen_state == SCREENSTATE.GAME) {
	if(key_pause){
		if(!is_paused){
			is_paused = true;
			last_screen_state = screen_state;
			screen_state = SCREENSTATE.PAUSED;
		}
	}
	if(key_mmi){
		is_paused = true;
		screen_state = SCREENSTATE.MODS;
	}
}  else if (screen_state == SCREENSTATE.OPTIONS) {
	if(key_down_pressed){
		if(option_screen_selected < 3){
			option_screen_selected++;
		} else {
			option_screen_selected = 0;
		}
	}
	if(key_up_pressed){
		if(option_screen_selected > 0){
			option_screen_selected--;
		} else {
			option_screen_selected = 3;
		}
	}
	
	if(option_screen_selected == 0){
		// controls
		if(key_jump_pressed || key_shoot_pressed || key_slash || key_missile_pressed || key_pause){
			controls_screen = true;
		}
	} else if (option_screen_selected == 1){
		if(key_left_pressed){
			music_gain = clamp(music_gain-5,0,100);
			audio_group_set_gain(Music,music_gain/100,0);
		}
		if(key_right_pressed){
			music_gain = clamp(music_gain+5,0,100);
			audio_group_set_gain(Music,music_gain/100,0);
		}
	} else if (option_screen_selected == 2){
		if(key_left_pressed){
			sfx_gain = clamp(sfx_gain-5,0,100);
			audio_group_set_gain(SFX,sfx_gain/100,0);
			audio_play_sound(sndShootSoft,100,false);
		}
		if(key_right_pressed){			
			sfx_gain = clamp(sfx_gain+5,0,100);
			audio_group_set_gain(SFX,sfx_gain/100,0);
			audio_play_sound(sndShootSoft,100,false);
		}
	} else if (option_screen_selected == 3){
		// back
		if(key_jump_pressed || key_shoot_pressed || key_slash || key_missile_pressed || key_pause){
			screen_state = SCREENSTATE.PAUSED;
		}
	}
	
	if(controls_screen){
		// show controls / allow mapping
	}
	
}  else if (screen_state == SCREENSTATE.MODS) {
	if(key_mmi_l){
		screen_state = SCREENSTATE.INVENTORY;
	}
	if(key_mmi_r){
		screen_state = SCREENSTATE.MAP;
	}
	if(key_jump_pressed){
		is_paused = false;
		screen_state = SCREENSTATE.GAME;
	}
	// control system for mod selection
} else if (screen_state == SCREENSTATE.MAP) {
	if(key_mmi_l){
		screen_state = SCREENSTATE.MODS;
	}
	if(key_mmi_r){
		screen_state = SCREENSTATE.INVENTORY;
	}
	if(key_jump_pressed){
		is_paused = false;
		screen_state = SCREENSTATE.GAME;
	}
	// l,r,u,d on the different rooms
} else if (screen_state == SCREENSTATE.INVENTORY) {
	if(key_mmi_l){
		screen_state = SCREENSTATE.MAP;
	}
	if(key_mmi_r){
		screen_state = SCREENSTATE.MODS;
	}
	if(key_jump_pressed){
		is_paused = false;
		screen_state = SCREENSTATE.GAME;
	}
	// no controls, just display upgrades
}