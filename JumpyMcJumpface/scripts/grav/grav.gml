/// @description Gravity calculation

if(vsp+grv < max_vsp){
	vsp += grv;
} else {
	vsp = max_vsp;
}

if(vsp < -jSpeed){
	vsp = -jSpeed;
}