// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function climb_ladder(){
	vsp = 0;
	image_speed = 0;
	launch_y = y;
	var ladders = false;
	if(place_meeting(x,y,oLadder)){
		ladders = true;
	} else {
		avatar_state = AVATARSTATE.JUMPING;
	}
	if(oGame.move_up && ladders){
		image_speed = 1;
		vsp = -climb_speed;
	}
	if(oGame.move_down && ladders){
		image_speed = 1;
		vsp = climb_speed;
	}
}