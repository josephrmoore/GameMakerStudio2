// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function door_open(){
	buttons_pressed_this_level = 0;
	oDoor.opened = true;
	audio_play_sound(aDoorOpen, 10, false);
}