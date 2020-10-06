// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Level(){
	if(buttons_pressed_this_level >= 1){
		door_open();
	}
}