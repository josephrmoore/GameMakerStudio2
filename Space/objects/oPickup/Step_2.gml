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
		
	} else if (kind == "has_long_slash"){
		oPlayer.has_long_slash = true;
	} else if (kind == "has_bombs"){
		oPlayer.has_bombs = true;
	} else if (kind == "can_hook"){
		oPlayer.can_hook = true;
	} else if (kind == "can_dash"){
		oPlayer.can_dash = true;
	} else if (kind == "has_spread"){
		oPlayer.has_spread = true;
	} else if (kind == "has_wave"){
		oPlayer.has_wave = true;
	} else if (kind == "has_turbo"){
		oPlayer.has_turbo = true;
	} else if (kind == "sticky_hang"){
		oPlayer.sticky_hang = true;
	} else if (kind == "has_missiles"){
		oPlayer.has_missiles = true;
	} else if (kind == "has_orb_slash"){
		oPlayer.has_orb_slash = true;
	} else if (kind == "has_slow_fall"){
		oPlayer.has_slow_fall = true;
	} else if (kind == "has_small_avatar"){
		oPlayer.has_small_avatar = true;
	} else if (kind == "has_strong_slash"){
		oPlayer.has_strong_slash = true;
	} else if (kind == "has_sharp_dash"){
		oPlayer.has_sharp_dash = true;
	} else if (kind == "has_screw_attack"){
		oPlayer.has_screw_attack = true;
	} else if (kind == "has_shield"){
		oPlayer.has_shield = true;
	} else if (kind == "has_regen"){
		oPlayer.has_regen = true;
	} else if (kind == "has_cluster_missiles"){
		oPlayer.has_cluster_missiles = true;
	} else if (kind == "has_super_bombs"){
		oPlayer.has_super_bombs = true;
	} // add else ifs for all other mods here
	instance_destroy();
}