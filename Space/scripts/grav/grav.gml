/// @description Gravity calculation

if(has_slow_fall && mod_slow_fall){
	max_vsp = 3;
}

if(vsp < max_vsp){
	vsp += grv;
} else {
	vsp = max_vsp;
}

if(vsp < -max_vsp){
	vsp = -max_vsp;
}