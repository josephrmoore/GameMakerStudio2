// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gain_control(){
	oAvatar.controllable = true;
	if(instance_exists(oCannon)){
		oCannon.is_paused = false;
		oCannon.activated = true;
	}
}