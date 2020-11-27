/// @description Gravity calculation
function grav() {

	if(has_slow_fall && mod_slow_fall){
		max_vsp = 3;
	} else {
		max_vsp = 20;
	}

	if(vsp < max_vsp){
		vsp += grv;
	} else {
		vsp = max_vsp;
	}

	if(vsp < -jSpeed){
		vsp = -jSpeed;
	}


}
