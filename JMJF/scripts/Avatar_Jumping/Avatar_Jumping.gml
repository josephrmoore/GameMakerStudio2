// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Jumping(){
	if(!is_paused){
		image_speed = 1;
		grav();
		left_right();
		jumping();
		collisions();
		avatar_position();
		if(y>(launch_y+lethal_fall_distance)){
			avatar_state = AVATARSTATE.FALLING;
		}
		sprite_index = sAvatar_jumping;
		if(hsp<0){
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	}
}