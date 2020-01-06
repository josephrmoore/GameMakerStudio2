var file = argument0;
// decode .sav file
if(file_exists(file)){
	var save_data = LoadJsonFromFile(file);
	oGame.last_level_finished = ds_map_find_value(save_data, "last_level_finished");
	oGame.finished_game = ds_map_find_value(save_data, "finished_game");
}