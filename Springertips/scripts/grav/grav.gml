/// @description Gravity calculation
// attach to object that needs gravity applied
// REQUIRED PARAMS: vsp
function grav() {
	vsp += oGame.grv;
	clamp(vsp,-max_vsp, max_vsp);
}
