/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,oPlayer)) {
	if(kind == "health"){
		oPlayer.hp += amount;
	} else if (kind == "missiles"){
		if(oPlayer.missiles+amount<oPlayer.max_missiles){
			oPlayer.missiles += amount;
		} else {
			oPlayer.missiles = oPlayer.max_missiles;
		}
		
	} else if (kind == "upgrade") {
		if (upgrade == "has_long_slash"){
			oPlayer.has_long_slash = true;
		} else if (upgrade == "has_bombs"){
			oPlayer.has_bombs = true;
		} else if (upgrade == "can_hook"){
			oPlayer.can_hook = true;
		} else if (upgrade == "can_dash"){
			oPlayer.can_dash = true;
		} else if (upgrade == "has_spread"){
			oPlayer.has_spread = true;
		} else if (upgrade == "has_wave"){
			oPlayer.has_wave = true;
		} else if (upgrade == "has_turbo"){
			oPlayer.has_turbo = true;
		} else if (upgrade == "has_sticky_hang"){
			oPlayer.has_sticky_hang = true;
		} else if (upgrade == "has_missiles"){
			oPlayer.has_missiles = true;
		} else if (upgrade == "has_orb_slash"){
			oPlayer.has_orb_slash = true;
		} else if (upgrade == "has_slow_fall"){
			oPlayer.has_slow_fall = true;
		} else if (upgrade == "has_small_avatar"){
			oPlayer.has_small_avatar = true;
		} else if (upgrade == "has_strong_slash"){
			oPlayer.has_strong_slash = true;
		} else if (upgrade == "has_sharp_dash"){
			oPlayer.has_sharp_dash = true;
		} else if (upgrade == "has_screw_attack"){
			oPlayer.has_screw_attack = true;
		} else if (upgrade == "has_shield"){
			oPlayer.has_shield = true;
		} else if (upgrade == "has_regen"){
			oPlayer.has_regen = true;
		} else if (upgrade == "has_cluster_missiles"){
			oPlayer.has_cluster_missiles = true;
		} else if (upgrade == "has_super_bombs"){
			oPlayer.has_super_bombs = true;
		} else if (upgrade == "can_double_jump"){
			oPlayer.max_jumps = 2;
		} else if (upgrade == "can_triple_jump"){
			oPlayer.max_jumps = 3;
		} else if (upgrade == "can_double_dash"){
			oPlayer.max_dashes = 2;
		} else if (upgrade == "can_triple_dash"){
			oPlayer.max_dashes = 3;
		} // add else ifs for all other mods here
	}
	instance_destroy();
}