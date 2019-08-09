
// decode .sav file
if(file_exists("saveX.sav")){
	var save_data = LoadJsonFromFile("saveX.sav");
	var load_room = ds_map_find_value(save_data, "room");
	oPlayer.hp = oPlayer.max_hp;
	oController.player_stats = ds_map_find_value(save_data, "player_stats");
	oController.upgrade_srs = ds_map_find_value(save_data, "upgrade_srs");
	oController.mod_srs = ds_map_find_value(save_data, "mod_srs");
	oController.energy_tank_srs = ds_map_find_value(save_data, "energy_tank_srs");
	oController.missile_upgrade_srs = ds_map_find_value(save_data, "missile_upgrade_srs");
	room_goto(asset_get_index(load_room));
	show_debug_message("game loaded");
	show_debug_message(oController.player_stats);
}