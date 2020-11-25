// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveLevelMural(argument0){
	var level_direction = argument0; // -1, 1
	
	if(level_direction < 0){
		if(current_level > 0){
			current_level--; 
		}
	} else {
		if(current_level < 8){
			current_level++;
		}
	}
}