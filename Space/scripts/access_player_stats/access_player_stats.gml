var action = argument0;

if(action == "get"){
	oPlayer.hp = ds_map_find_value(player_stats, "hp");
	oPlayer.missiles = ds_map_find_value(player_stats, "missiles");
	oPlayer.max_jumps = ds_map_find_value(player_stats, "max_jumps");
	oPlayer.max_dashes = ds_map_find_value(player_stats, "max_dashes");
	oPlayer.has_missiles = ds_map_find_value(player_stats, "has_missiles");
	oPlayer.has_spread = ds_map_find_value(player_stats, "has_spread");
} else if (action == "set"){
	ds_map_set(player_stats,"hp",oPlayer.hp);
	ds_map_set(player_stats,"missiles",oPlayer.missiles);
	ds_map_set(player_stats,"max_jumps",oPlayer.max_jumps);
	ds_map_set(player_stats,"max_dashes",oPlayer.max_dashes);
	ds_map_set(player_stats,"has_missiles",oPlayer.has_missiles);
	ds_map_set(player_stats,"has_spread",oPlayer.has_spread);
} else if (action == "create"){
	ds_map_add(player_stats,"hp",oPlayer.hp);
	ds_map_add(player_stats,"missiles",oPlayer.missiles);
	ds_map_add(player_stats,"max_jumps",oPlayer.max_jumps);
	ds_map_add(player_stats,"max_dashes",oPlayer.max_dashes);
	ds_map_add(player_stats,"has_missiles",oPlayer.has_missiles);
	ds_map_add(player_stats,"has_spread",oPlayer.has_spread);
}