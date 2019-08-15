var file = argument0;
// decode .sav file
if(file_exists(file)){
	var save_data = LoadJsonFromFile(file);
	var load_room = ds_map_find_value(save_data, "room");
	ds_map_copy(oController.player_stats, ds_map_find_value(save_data, "player_stats"));
	ds_list_copy(oController.upgrade_srs, ds_map_find_value(save_data, "upgrade_srs"));
	ds_list_copy(oController.mod_srs, ds_map_find_value(save_data, "mod_srs"));
	ds_list_copy(oController.energy_tank_srs, ds_map_find_value(save_data, "energy_tank_srs"));
	ds_list_copy(oController.missile_upgrade_srs, ds_map_find_value(save_data, "missile_upgrade_srs"));
	ds_list_copy(oController.player_upgrades, ds_map_find_value(save_data, "player_upgrades"));
	ds_list_copy(oController.player_mods, ds_map_find_value(save_data, "player_mods"));
	ds_list_copy(oController.player_mods_activated, ds_map_find_value(save_data, "player_mods_activated"));	
	ds_grid_read(global.map_visited_grid, ds_map_find_value(save_data, "map"));
	oController.story_progress = ds_map_find_value(save_data, "story_progress");
	room_goto(asset_get_index(load_room));
}