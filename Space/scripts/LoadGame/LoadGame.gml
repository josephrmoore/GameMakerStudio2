var file = argument0;
// decode .sav file
if(file_exists(file)){
	var save_data = LoadJsonFromFile(file);
	var load_room = ds_map_find_value(save_data, "room");	
	oController.player_stats = ds_map_find_value(save_data, "player_stats");
	oController.upgrade_srs = ds_map_find_value(save_data, "upgrade_srs");
	oController.mod_srs = ds_map_find_value(save_data, "mod_srs");
	oController.energy_tank_srs = ds_map_find_value(save_data, "energy_tank_srs");
	oController.missile_upgrade_srs = ds_map_find_value(save_data, "missile_upgrade_srs");
	room_goto(asset_get_index(load_room));
}