/// @description Gravity calculation

if(has_slow_fall){
	grv = 0.8;
}

if(vsp < max_vsp){
	vsp += grv;
} else {
	vsp = max_vsp;
}