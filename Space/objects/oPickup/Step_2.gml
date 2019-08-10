/// @description Insert description here
// You can write your code in this editor

if(oController.is_paused){
	image_speed = 0;
} else {
	image_speed = 1;
}


if(!collected){
	if (place_meeting(x,y,oPlayer)) {
		if(kind == "health"){
			if(oPlayer.hp + amount > oPlayer.max_hp){
				oPlayer.hp = oPlayer.max_hp;
			} else {
				oPlayer.hp += amount;
			}
			audio_play_sound(sndPickupHealth,7,false);
		} else if (kind == "missiles"){
			if(oPlayer.missiles+amount<oPlayer.max_missiles){
				oPlayer.missiles += amount;
			} else {
				oPlayer.missiles = oPlayer.max_missiles;
			}
			audio_play_sound(sndPickupMissiles,7,false);
		} else if (kind == "upgrade") {
			audio_play_sound(sndPickupUpgrade,7,false);
			if (upgrade == "has_bombs"){
				oPlayer.has_bombs = true;
			} else if (upgrade == "can_hook"){
				oPlayer.can_hook = true;
			} else if (upgrade == "can_dash"){
				oPlayer.can_dash = true;
			} else if (upgrade == "has_spread"){
				oPlayer.has_spread = true;
			} else if (upgrade == "has_wave"){
				oPlayer.has_wave = true;
			} else if (upgrade == "has_missiles"){
				oPlayer.has_missiles = true;
			} else if (upgrade == "has_orb_slash"){
				oPlayer.has_orb_slash = true;
			} else if (upgrade == "has_screw_attack"){
				oPlayer.has_screw_attack = true;
			} else if (upgrade == "has_mod_system"){
				oPlayer.has_mod_system = true;
			} else if (upgrade == "can_double_jump"){
				oPlayer.max_jumps = 2;
			}
			// update upgrade srs
			ds_list_add(oController.upgrade_srs, get_srs());
			//oController.upgrade_srs[array_length_1d(oController.upgrade_srs)] = get_srs();
		} else if (kind == "mod"){
			audio_play_sound(sndPickupUpgrade,7,false);
			if (upgrade == "has_long_slash"){
				oPlayer.has_long_slash = true;
			} else if (upgrade == "has_turbo"){
				oPlayer.has_turbo = true;
			} else if (upgrade == "has_sticky_hang"){
				oPlayer.has_sticky_hang = true;
			} else if (upgrade == "has_slow_fall"){
				oPlayer.has_slow_fall = true;
			} else if (upgrade == "has_small_avatar"){
				oPlayer.has_small_avatar = true;
			} else if (upgrade == "has_strong_slash"){
				oPlayer.has_strong_slash = true;
			} else if (upgrade == "has_sharp_dash"){
				oPlayer.has_sharp_dash = true;
			} else if (upgrade == "has_shield"){
				oPlayer.has_shield = true;
			} else if (upgrade == "has_regen"){
				oPlayer.has_regen = true;
			} else if (upgrade == "has_cluster_missiles"){
				oPlayer.has_cluster_missiles = true;
			} else if (upgrade == "has_super_bombs"){
				oPlayer.has_super_bombs = true;
			}
			// update mod srs
			ds_list_add(oController.mod_srs, get_srs());
			//oController.mod_srs[array_length_1d(oController.mod_srs)] = get_srs();
		} else if (kind == "missile_upgrade"){
			oPlayer.max_missiles += 5;
			oPlayer.missiles += 5;
			// update missile srs
			ds_list_add(oController.missile_upgrade_srs, get_srs());
			//oController.missile_upgrade_srs[array_length_1d(oController.missile_upgrade_srs)] = get_srs();
		} else if (kind == "energy_tank"){
			oPlayer.energy_tanks += 1;
			oPlayer.max_hp += 100;
			oPlayer.hp = oPlayer.max_hp;
			// update energy tank srs
			ds_list_add(oController.energy_tank_srs, get_srs());
			//oController.energy_tank_srs[array_length_1d(oController.energy_tank_srs)] = get_srs();
		}
		collected = true;
		// update player_stats
		access_player_stats("set");
		instance_destroy();
	}
} else {
	instance_destroy();
}