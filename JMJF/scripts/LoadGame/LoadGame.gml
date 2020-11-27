// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadGame(argument0) {
	var file = argument0;
	//// decode .sav file
	if(file_exists(file)){
		var save_data = LoadJsonFromFile(file);
		oGame.highest_level = ds_map_find_value(save_data, "highest_level");
		show_debug_message("Game loaded");
	}
}