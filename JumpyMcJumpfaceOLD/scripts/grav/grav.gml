/// @description Gravity calculation
function grav() {

	vsp += grv;

	var max_now = max_vsp;
	if(oPlayer.has_parachute){
		max_now = floor(max_vsp/2);
	}

	//vsp = clamp(vsp, -jSpeed, max_now);



	//if(vsp < -jSpeed){
	//	vsp = -jSpeed;
	//}


}
