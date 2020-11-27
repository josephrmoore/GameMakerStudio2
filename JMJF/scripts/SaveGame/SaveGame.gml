// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame(argument0) {
	file = argument0;

	var save_data = ds_map_create();

	ds_map_add(save_data,"highest_level",oGame.highest_level);

	var _string = json_encode(save_data);
	SaveStringToFile(file, _string);

	ds_map_destroy(save_data);

	show_debug_message("game saved");
}
