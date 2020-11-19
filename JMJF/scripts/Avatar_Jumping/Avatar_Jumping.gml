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
		//if(y>(launch_y+lethal_fall_distance)){
		//	avatar_state = AVATARSTATE.FALLING;
		//}
		//var double_timer = jump_timer;
		//if(oAvatar.max_jumps == 2){
		//	double_timer = jump_timer*1.5;
		//}
		//if(alarm[1] <= 0){
		//	alarm[1] = double_timer;
		//}
		if(armored){
			sprite_index = sAvatar_jumpingArmored;
		} else {
			sprite_index = sAvatar_jumping;
		}
		if(hsp<0){
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	}
}