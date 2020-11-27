/// @description Insert description here
// You can write your code in this editor
ds_map_destroy(player_stats);
ds_list_destroy(player_upgrades);
ds_list_destroy(player_mods);
ds_list_destroy(player_mods_activated);
ds_list_destroy(upgrade_srs);
ds_list_destroy(mod_srs);
ds_list_destroy(energy_tank_srs);
ds_list_destroy(missile_upgrade_srs);
ds_grid_destroy(global.map_visited_grid);