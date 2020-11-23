// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function click_big_button(argument0){
	if(!oButtonBig.already_landed){
		oButtonBig.already_landed = true;
		show_debug_message("BIG CLICK!");
		// click
		oButtonBig.clicks++;
		if(!audio_is_playing(aButtonClick)){
			audio_play_sound(aButtonClick,100,false);
		}
		// check for enough clicks to press
		if(oButtonBig.clicks>25){
			oButtonBig.pressed = true;
			oAvatar.launch_y = 10000;
			audio_play_sound(aEndButton, 100, false);
			// launch ending
			start_timeline(tEnding);
		}
	}
}