// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slide(){
	launch_y = y;
	if(!place_meeting(x,y,oSlide)){
		avatar_state = AVATARSTATE.JUMPING;
	}
	vsp = slide_speed;
}