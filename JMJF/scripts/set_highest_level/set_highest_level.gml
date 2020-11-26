// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_highest_level(argument0){
	var room_number = argument0;
	if(room_number > oGame.highest_level){
		oGame.highest_level = room_number;
	}
}