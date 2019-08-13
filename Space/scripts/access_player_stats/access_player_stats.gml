var action = argument0;

if(action == "load"){
	oPlayer.hp = ds_map_find_value(oController.player_stats, "hp");
	oPlayer.max_missiles = ds_map_find_value(oController.player_stats, "max_missiles");
	oPlayer.energy_tanks = ds_map_find_value(oController.player_stats, "energy_tanks");
	oPlayer.max_hp = ds_map_find_value(oController.player_stats, "max_hp");
	oPlayer.missiles = ds_map_find_value(oController.player_stats, "missiles");
	oPlayer.max_jumps = ds_map_find_value(oController.player_stats, "max_jumps");
	oPlayer.max_dashes = ds_map_find_value(oController.player_stats, "max_dashes");
	
	oPlayer.has_turbo = ds_list_find_value(oController.player_mods, PLAYERMODS.TURBO);
	oPlayer.can_triple_jump = ds_list_find_value(oController.player_mods, PLAYERMODS.TRIPLEJUMP);
	oPlayer.can_double_dash = ds_list_find_value(oController.player_mods, PLAYERMODS.DOUBLEDASH);
	oPlayer.can_triple_dash = ds_list_find_value(oController.player_mods, PLAYERMODS.TRIPLEDASH);
	oPlayer.has_strong_slash = ds_list_find_value(oController.player_mods, PLAYERMODS.STRONGSLASH);
	oPlayer.has_long_slash = ds_list_find_value (oController.player_mods, PLAYERMODS.LONGSLASH);
	oPlayer.has_sticky_hang = ds_list_find_value(oController.player_mods, PLAYERMODS.STICKYHANG);
	oPlayer.has_slow_fall = ds_list_find_value(oController.player_mods, PLAYERMODS.SLOWFALL);
	oPlayer.has_small_avatar = ds_list_find_value(oController.player_mods, PLAYERMODS.SMALLAVATAR);
	oPlayer.has_sharp_dash = ds_list_find_value(oController.player_mods, PLAYERMODS.SHARPDASH);
	oPlayer.has_regen = ds_list_find_value(oController.player_mods, PLAYERMODS.REGEN);
	oPlayer.has_shield = ds_list_find_value(oController.player_mods, PLAYERMODS.SHIELD);
	oPlayer.has_super_bombs = ds_list_find_value(oController.player_mods, PLAYERMODS.SUPERBOMB);
	oPlayer.has_cluster_missiles = ds_list_find_value(oController.player_mods, PLAYERMODS.CLUSTERMISSILES);
	
	oPlayer.mod_turbo = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.TURBO);
	oPlayer.mod_triple_jump = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.TRIPLEJUMP);
	oPlayer.mod_double_dash = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.DOUBLEDASH);
	oPlayer.mod_triple_dash = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.TRIPLEDASH);
	oPlayer.mod_strong_slash = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.STRONGSLASH);
	oPlayer.mod_long_slash = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.LONGSLASH);
	oPlayer.mod_sticky_hang = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.STICKYHANG);
	oPlayer.mod_slow_fall = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.SLOWFALL);
	oPlayer.mod_small_avatar = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.SMALLAVATAR);
	oPlayer.mod_sharp_dash = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.SHARPDASH);
	oPlayer.mod_regen = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.REGEN);
	oPlayer.mod_shield = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.SHIELD);
	oPlayer.mod_super_bombs = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.SUPERBOMB);
	oPlayer.mod_cluster_missiles = ds_list_find_value(oController.player_mods_activated, PLAYERMODS.CLUSTERMISSILES);
	
	oPlayer.has_missiles = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.MISSILES);
	oPlayer.can_hook = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.HOOK);
	oPlayer.can_double_jump = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.DOUBLEJUMP);
	oPlayer.can_dash = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.DASH);
	oPlayer.has_spread = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.SPREAD);
	oPlayer.has_wave = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.WAVE);
	oPlayer.has_bombs = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.BOMB);
	oPlayer.has_screw_attack = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.SCREWATTACK);
	oPlayer.has_orb_slash = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.ORBSLASH);
	oPlayer.has_mod_system = ds_list_find_value(oController.player_upgrades, PLAYERUPGRADES.MODSYSTEM);
	
} else if (action == "set"){	
	ds_map_set(oController.player_stats,"hp",oPlayer.hp);
	ds_map_set(oController.player_stats,"max_missiles",oPlayer.max_missiles);
	ds_map_set(oController.player_stats,"energy_tanks",oPlayer.energy_tanks);
	ds_map_set(oController.player_stats,"max_hp",oPlayer.max_hp);
	ds_map_set(oController.player_stats,"missiles",oPlayer.missiles);
	ds_map_set(oController.player_stats,"max_jumps",oPlayer.max_jumps);
	ds_map_set(oController.player_stats,"max_dashes",oPlayer.max_dashes);
	
	if(!ds_list_empty(oController.player_mods)){
	ds_list_set(oController.player_mods, PLAYERMODS.TURBO, oPlayer.has_turbo);
	ds_list_set(oController.player_mods, PLAYERMODS.TRIPLEJUMP, oPlayer.can_triple_jump);
	ds_list_set(oController.player_mods, PLAYERMODS.DOUBLEDASH, oPlayer.can_double_dash);
	ds_list_set(oController.player_mods, PLAYERMODS.TRIPLEDASH, oPlayer.can_triple_dash);
	ds_list_set(oController.player_mods, PLAYERMODS.STRONGSLASH, oPlayer.has_strong_slash);
	ds_list_set(oController.player_mods, PLAYERMODS.LONGSLASH, oPlayer.has_long_slash);
	ds_list_set(oController.player_mods, PLAYERMODS.STICKYHANG, oPlayer.has_sticky_hang);
	ds_list_set(oController.player_mods, PLAYERMODS.SLOWFALL, oPlayer.has_slow_fall);
	ds_list_set(oController.player_mods, PLAYERMODS.SMALLAVATAR, oPlayer.has_small_avatar);
	ds_list_set(oController.player_mods, PLAYERMODS.SHARPDASH, oPlayer.has_sharp_dash);
	ds_list_set(oController.player_mods, PLAYERMODS.REGEN, oPlayer.has_regen);
	ds_list_set(oController.player_mods, PLAYERMODS.SHIELD, oPlayer.has_shield);
	ds_list_set(oController.player_mods, PLAYERMODS.SUPERBOMB, oPlayer.has_super_bombs);
	ds_list_set(oController.player_mods, PLAYERMODS.CLUSTERMISSILES, oPlayer.has_cluster_missiles);
	}
	ds_list_set(oController.player_mods_activated, PLAYERMODS.TURBO, oPlayer.mod_turbo);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.TRIPLEJUMP, oPlayer.mod_triple_jump);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.DOUBLEDASH, oPlayer.mod_double_dash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.TRIPLEDASH, oPlayer.mod_triple_dash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.STRONGSLASH, oPlayer.mod_strong_slash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.LONGSLASH, oPlayer.mod_long_slash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.STICKYHANG, oPlayer.mod_sticky_hang);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SLOWFALL, oPlayer.mod_slow_fall);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SMALLAVATAR, oPlayer.mod_small_avatar);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SHARPDASH, oPlayer.mod_sharp_dash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.REGEN, oPlayer.mod_regen);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SHIELD, oPlayer.mod_shield);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SUPERBOMB, oPlayer.mod_super_bombs);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.CLUSTERMISSILES, oPlayer.mod_cluster_missiles);
	
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.MISSILES, oPlayer.has_missiles);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.HOOK, oPlayer.can_hook);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.DOUBLEJUMP, oPlayer.can_double_jump);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.DASH, oPlayer.can_dash);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.SPREAD, oPlayer.has_spread);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.WAVE, oPlayer.has_wave);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.BOMB, oPlayer.has_bombs);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.SCREWATTACK, oPlayer.has_screw_attack);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.ORBSLASH, oPlayer.has_orb_slash);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.MODSYSTEM, oPlayer.has_mod_system);
	
	ds_map_replace(oController.player_stats, "upgrades", oController.player_upgrades);
	ds_map_replace(oController.player_stats, "mods", oController.player_mods);
	ds_map_replace(oController.player_stats, "mods_activated", oController.player_mods_activated);

} else if (action == "create"){
	ds_map_add(oController.player_stats,"hp",oPlayer.hp);
	ds_map_add(oController.player_stats,"max_missiles",oPlayer.max_missiles);
	ds_map_add(oController.player_stats,"energy_tanks",oPlayer.energy_tanks);
	ds_map_add(oController.player_stats,"max_hp",oPlayer.max_hp);
	ds_map_add(oController.player_stats,"missiles",oPlayer.missiles);
	ds_map_add(oController.player_stats,"max_jumps",oPlayer.max_jumps);
	ds_map_add(oController.player_stats,"max_dashes",oPlayer.max_dashes);
	
	ds_list_set(oController.player_mods, PLAYERMODS.TURBO, oPlayer.has_turbo);
	ds_list_set(oController.player_mods, PLAYERMODS.TRIPLEJUMP, oPlayer.can_triple_jump);
	ds_list_set(oController.player_mods, PLAYERMODS.DOUBLEDASH, oPlayer.can_double_dash);
	ds_list_set(oController.player_mods, PLAYERMODS.TRIPLEDASH, oPlayer.can_triple_dash);
	ds_list_set(oController.player_mods, PLAYERMODS.STRONGSLASH, oPlayer.has_strong_slash);
	ds_list_set(oController.player_mods, PLAYERMODS.LONGSLASH, oPlayer.has_long_slash);
	ds_list_set(oController.player_mods, PLAYERMODS.STICKYHANG, oPlayer.has_sticky_hang);
	ds_list_set(oController.player_mods, PLAYERMODS.SLOWFALL, oPlayer.has_slow_fall);
	ds_list_set(oController.player_mods, PLAYERMODS.SMALLAVATAR, oPlayer.has_small_avatar);
	ds_list_set(oController.player_mods, PLAYERMODS.SHARPDASH, oPlayer.has_sharp_dash);
	ds_list_set(oController.player_mods, PLAYERMODS.REGEN, oPlayer.has_regen);
	ds_list_set(oController.player_mods, PLAYERMODS.SHIELD, oPlayer.has_shield);
	ds_list_set(oController.player_mods, PLAYERMODS.SUPERBOMB, oPlayer.has_super_bombs);
	ds_list_set(oController.player_mods, PLAYERMODS.CLUSTERMISSILES, oPlayer.has_cluster_missiles);
	
	ds_list_set(oController.player_mods_activated, PLAYERMODS.TURBO, oPlayer.mod_turbo);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.TRIPLEJUMP, oPlayer.mod_triple_jump);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.DOUBLEDASH, oPlayer.mod_double_dash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.TRIPLEDASH, oPlayer.mod_triple_dash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.STRONGSLASH, oPlayer.mod_strong_slash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.LONGSLASH, oPlayer.mod_long_slash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.STICKYHANG, oPlayer.mod_sticky_hang);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SLOWFALL, oPlayer.mod_slow_fall);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SMALLAVATAR, oPlayer.mod_small_avatar);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SHARPDASH, oPlayer.mod_sharp_dash);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.REGEN, oPlayer.mod_regen);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SHIELD, oPlayer.mod_shield);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.SUPERBOMB, oPlayer.mod_super_bombs);
	ds_list_set(oController.player_mods_activated, PLAYERMODS.CLUSTERMISSILES, oPlayer.mod_cluster_missiles);
	
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.MISSILES, oPlayer.has_missiles);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.HOOK, oPlayer.can_hook);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.DOUBLEJUMP, oPlayer.can_double_jump);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.DASH, oPlayer.can_dash);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.SPREAD, oPlayer.has_spread);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.WAVE, oPlayer.has_wave);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.BOMB, oPlayer.has_bombs);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.SCREWATTACK, oPlayer.has_screw_attack);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.ORBSLASH, oPlayer.has_orb_slash);
	ds_list_set(oController.player_upgrades, PLAYERUPGRADES.MODSYSTEM, oPlayer.has_mod_system);
	
	ds_map_add_list(oController.player_stats, "upgrades", oController.player_upgrades);
	ds_map_add_list(oController.player_stats, "mods", oController.player_mods);
	ds_map_add_list(oController.player_stats, "mods_activated", oController.player_mods_activated);
}