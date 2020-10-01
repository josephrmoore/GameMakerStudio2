// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function climb_vine(){
	if(!place_meeting(x,y,oVine)){
		avatar_state = AVATARSTATE.JUMPING;
	}
	vsp = -vine_speed;
}