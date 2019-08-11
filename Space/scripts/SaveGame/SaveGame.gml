var file = argument0;

// save current_room, player_stats, srs lists

var save_data = ds_map_create();

var player_stats = ds_map_create();
var upgrade_srs = ds_list_create();
var mod_srs = ds_list_create();
var energy_tank_srs = ds_list_create();
var missile_upgrade_srs = ds_list_create();

ds_map_copy(player_stats,oController.player_stats);
ds_list_copy(upgrade_srs,oController.upgrade_srs);
ds_list_copy(mod_srs,oController.mod_srs);
ds_list_copy(energy_tank_srs,oController.energy_tank_srs);
ds_list_copy(missile_upgrade_srs,oController.missile_upgrade_srs);

//ds_map_set(player_stats, "hp", oPlayer.max_hp);

ds_map_add(save_data,"room",room_get_name(room));
ds_map_add(save_data,"story_progress", oController.story_progress);
ds_map_add_map(save_data, "player_stats", player_stats);
ds_map_add_list(save_data,"upgrade_srs", upgrade_srs);
ds_map_add_list(save_data,"mod_srs", mod_srs);
ds_map_add_list(save_data,"missile_upgrade_srs", missile_upgrade_srs);
ds_map_add_list(save_data,"energy_tank_srs", energy_tank_srs);

var _string = json_encode(save_data);
SaveStringToFile(file, _string);

ds_map_destroy(save_data);

show_debug_message("game saved");