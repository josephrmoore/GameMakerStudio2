/// @description Gravity calculation

if(vsp+grv < max_vsp){
	vsp += grv;
} else {
	if(oPlayer.has_parachute){
		vsp = floor(max_vsp/2);
	} else {
		vsp = max_vsp;
	}
}

if(vsp < -jSpeed){
	vsp = -jSpeed;
}