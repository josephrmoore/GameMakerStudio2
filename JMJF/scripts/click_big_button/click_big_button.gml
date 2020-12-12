// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function click_big_button(argument0){

//		show_debug_message("BIG CLICK!");
		// click
		with(oButtonBig){
			clicks++;
			alarm[1] = 20;
			shaking = true;
		}		
		//if(!audio_is_playing(aButtonClick)){
			audio_play_sound(aButtonClick,100,false);
//		}
		// check for enough clicks to press
		if(oButtonBig.clicks>=9 && !oButtonBig.pressed){
			lose_control();
			oAvatar.avatar_state = AVATARSTATE.IDLE;
			oAvatar.launch_y = 10000;
			oAvatar.hsp = 0;
			oButtonBig.pressed = true;
			if(!audio_is_playing(aEndButton)){
				audio_stop_all();
				audio_play_sound(aEndButton, 100, false);
			}
			// launch ending
			start_timeline(tEnding);
		}
}