function LoadPlayerStats(argument0) {
	var file = argument0;
	// decode .sav file
	if(file_exists(file)){
		var save_data = LoadJsonFromFile(file);
		oPlayer.has_parachute = ds_map_find_value(save_data, "has_parachute");
		oPlayer.has_pole_climb = ds_map_find_value(save_data, "has_pole_climb");
		oPlayer.has_high_jump = ds_map_find_value(save_data, "has_high_jump");
		oPlayer.has_double_jump = ds_map_find_value(save_data, "has_double_jump");
	}


}
