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
		
	} else if (kind == "long_slash"){
		oPlayer.has_long_slash = true;
	} else if (kind == "has_bombs"){
		oPlayer.has_bombs = true;
	} // add else ifs for all other mods here
	instance_destroy();
}