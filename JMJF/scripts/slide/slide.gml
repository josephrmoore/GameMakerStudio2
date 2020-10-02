// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slide(){
	if(!place_meeting(x,y,oSlide)){
		avatar_state = AVATARSTATE.JUMPING;
		launch_y = y;
	}
	vsp = slide_speed;
}