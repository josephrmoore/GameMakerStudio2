// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_hazard_collision(){
	if(place_meeting(x,y,oHazard)){
		show_debug_message("HAZARDS!");
		die();
	}
}