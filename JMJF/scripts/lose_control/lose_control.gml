// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lose_control(){
	oAvatar.controllable = false;
	if(instance_exists(oCannon)){
		oCannon.is_paused = true;
		oCannon.activated = false;
	}
}