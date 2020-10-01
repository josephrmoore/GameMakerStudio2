function SaveEndingState(argument0) {
	file = argument0;

	var save_data = ds_map_create();

	ds_map_add(save_data,"finished_game",oGame.finished_game);

	var _string = json_encode(save_data);
	SaveStringToFile(file, _string);

	ds_map_destroy(save_data);

	show_debug_message("game saved");


}
