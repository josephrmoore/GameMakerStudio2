// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_hazard_collision(){
	if(place_meeting(x,y,oHazard) && oAvatar.avatar_state != AVATARSTATE.DEAD){
		oAvatar.hsp = 0;
		die();
	}
}