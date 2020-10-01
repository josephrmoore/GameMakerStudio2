function LoadEndingState(argument0) {
	var file = argument0;
	// decode .sav file
	if(file_exists(file)){
		var save_data = LoadJsonFromFile(file);
		oGame.finished_game = ds_map_find_value(save_data, "finished_game");
	}


}
